struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1152f, -752f))))) == -710f);
    var_0 = any(!(!(!(!vec2<bool>(arg_1, arg_0.a.x)))));
    let var_1 = u_input.b.zy;
    var var_2 = _wgslsmith_sub_i32(firstLeadingBit(abs(-38109i)), ~select(~(~(-1i)), _wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(5094i, -2147483647i))), select(any(vec3<bool>(arg_1, true, true)), any(vec3<bool>(true, true, arg_0.a.x)), any(arg_0.a))));
    var_0 = arg_0.a.x;
    return ~firstLeadingBit(~reverseBits(4294967295u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_4(Struct_2(u_input.b, Struct_1(select(arg_1.zw, !vec2<bool>(arg_1.x, true), arg_1.wy)), Struct_1(vec2<bool>(select(false, false, true), any(arg_1.zw)))), Struct_2(vec3<u32>(func_3(Struct_1(vec2<bool>(false, arg_1.x)), arg_1.x, 4294967295u, 4294967295u), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) & (min(vec3<u32>(4294967295u, 37273u, u_input.a.x), vec3<u32>(u_input.b.x, u_input.b.x, 20356u)) ^ vec3<u32>(22296u, u_input.b.x, u_input.a.x)), Struct_1(arg_1.zx), Struct_1(vec2<bool>(any(arg_1), true))), any(arg_1.xw), Struct_1(arg_1.ww), select(-abs(_wgslsmith_dot_vec3_i32(vec3<i32>(38641i, 3891i, -25735i), vec3<i32>(1i, 0i, 2147483647i))), countOneBits(2147483647i), select(!any(vec2<bool>(arg_1.x, false)), true, true)));
    let var_1 = 1i;
    var_0 = Struct_4(var_0.b, var_0.b, !arg_1.x, var_0.a.c, -_wgslsmith_div_i32(-var_1, ~(-1i)));
    var_0 = Struct_4(Struct_2(~vec3<u32>(var_0.a.a.x, var_0.b.a.x, var_0.b.a.x), var_0.d, Struct_1(vec2<bool>(true, false))), var_0.b, false, var_0.a.b, select(i32(-1i) * -var_0.e, _wgslsmith_mult_i32(var_0.e, var_0.e), all(!vec2<bool>(var_0.a.b.a.x, var_0.b.c.a.x))) & firstTrailingBit(~(-var_0.e)));
    let var_2 = ~vec4<u32>(30422u, _wgslsmith_div_u32(u_input.a.x, var_0.a.a.x), firstLeadingBit(~26831u), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(43177u, var_2.x), reverseBits((u_input.a.x << (var_0.a.a.x % 32u)) & ~4294967295u), 3859u), vec3<u32>(0u, 15085u, 74003u));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> vec2<bool> {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-201f, -1381f, 1030f, -649f))), select(vec4<bool>(true, false != arg_2, false, all(arg_0.b.a)), select(select(vec4<bool>(true, arg_2, false, false), vec4<bool>(arg_2, true, true, false), arg_2), select(vec4<bool>(true, arg_2, true, true), vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, arg_2, true, arg_2)), select(vec4<bool>(arg_0.c.a.x, true, true, arg_0.c.a.x), vec4<bool>(true, true, true, arg_0.c.a.x), vec4<bool>(arg_2, true, true, true))), arg_0.c.a.x)), arg_0.c, arg_0.c);
    let var_1 = Struct_1(arg_0.c.a);
    return select(var_1.a, select(select(select(vec2<bool>(false, arg_2), arg_0.b.a, var_0.b.a), !select(arg_0.c.a, arg_0.b.a, arg_0.c.a), vec2<bool>(any(vec4<bool>(arg_0.c.a.x, var_0.c.a.x, true, false)), true)), var_1.a, select(vec2<bool>(var_0.a.x > arg_0.a.x, var_1.a.x), !(!vec2<bool>(true, arg_0.c.a.x)), vec2<bool>(all(vec3<bool>(arg_2, var_1.a.x, arg_2)), arg_0.c.a.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(all(vec4<bool>(true, true, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), select(func_1(Struct_2(vec3<u32>(u_input.a.x, 42985u, 10127u), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true))), -2147483647i, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), func_1(Struct_2(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true))), -2147483647i, select(false, false, false)).x), vec2<bool>(true, true)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), any(vec3<bool>(true, true, true)) & true), !(1849f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-884f))))));
    let var_1 = !(var_0.x & (~u_input.a.x == u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -455f);
    let var_3 = vec3<u32>(4294967295u, u_input.b.x, ~_wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(~u_input.b.x)));
    var var_4 = select(vec3<bool>(var_1 != all(vec3<bool>(var_1, var_1, var_0.x)), (_wgslsmith_f_op_f32(sign(2236f)) != var_2) || (1u >= (89677u << (u_input.a.x % 32u))), var_0.x), !vec3<bool>(any(!vec3<bool>(var_1, var_0.x, true)), all(!vec4<bool>(var_1, true, var_0.x, false)), true), false);
    var var_5 = Struct_3(Struct_2(~(~vec3<u32>(var_3.x, u_input.b.x, u_input.a.x)), Struct_1(!(!var_0)), Struct_1(vec2<bool>(any(vec4<bool>(true, true, true, false)), true))), -select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(18408i, -40118i, -1i)), i32(-1i) * -20183i, select(-1i, -14699i, true), -1i >> (1u % 32u)), -vec4<i32>(1i, 57368i, 2147483647i, -33919i), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x) < 15535u), var_2);
    var_4 = !vec3<bool>(true, var_4.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(20306u, countOneBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(21967u, u_input.b.x), _wgslsmith_clamp_u32(67046u, var_5.a.a.x, u_input.b.x), firstLeadingBit(50726u)))), ((var_3.x << (96326u % 32u)) << (_wgslsmith_clamp_u32(~u_input.a.x, ~4138u, ~u_input.a.x) % 32u)) << (select(var_5.a.a.x, ~17794u, all(!vec4<bool>(true, false, var_1, true))) % 32u));
}

