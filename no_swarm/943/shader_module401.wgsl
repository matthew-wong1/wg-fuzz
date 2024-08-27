struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: i32 = -38832i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec4<bool> {
    return select(!vec4<bool>(arg_0 <= _wgslsmith_f_op_f32(-457f - arg_2.c), true, true, arg_2.a), vec4<bool>(false, true, !((arg_2.b > arg_3.d.x) | !arg_1), true), vec4<bool>(true, !arg_1, any(select(vec3<bool>(false, arg_1, arg_1), global1.yyy, vec3<bool>(false, arg_2.a, false))), false));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32) -> Struct_3 {
    global1 = !(!(!select(func_3(arg_0.d.x, global1.x, Struct_2(false, -2413f, arg_0.d.x, vec3<u32>(5671u, 1u, global0.x)), arg_0), vec4<bool>(true, arg_0.b.x, global1.x, false), false)));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = func_2(Struct_3(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(u_input.a, 1i, -17121i, arg_3)), select(vec4<i32>(50712i, -71621i, arg_3, -32727i), firstLeadingBit(vec4<i32>(u_input.a, arg_3, arg_3, 7549i)), vec4<bool>(true, false, true, global1.x))), !select(global1.zz, !global1.yx, vec2<bool>(global1.x, global1.x)), -13623i, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), -959f), _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_div_vec4_i32(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(18406i, -29970i, 44206i, -2147483647i), vec4<i32>(u_input.a, arg_3, -76728i, arg_3))), -(~(~vec4<i32>(arg_3, 1i, u_input.a, u_input.a)))), 42843i);
    var var_1 = Struct_3(vec4<i32>(-abs(_wgslsmith_add_i32(u_input.a, var_0.a.x)), var_0.c, _wgslsmith_div_i32(arg_3, -1i << (~global0.x % 32u)), _wgslsmith_mod_i32(-2147483647i, arg_3)), !vec2<bool>(u_input.a == (arg_3 << (arg_0.x % 32u)), false), 0i, var_0.d);
    let var_2 = ~firstLeadingBit(_wgslsmith_add_vec3_u32((global0.xzx | vec3<u32>(4294967295u, global0.x, global0.x)) << (firstLeadingBit(vec3<u32>(arg_2, arg_0.x, global0.x)) % vec3<u32>(32u)), max(max(u_input.c.yxz, vec3<u32>(53712u, 18038u, u_input.c.x)), u_input.c.wxz)));
    global2 = -1i;
    global1 = select(!select(func_3(_wgslsmith_div_f32(-481f, -1667f), true, Struct_2(var_1.b.x, -984f, var_0.d.x, u_input.c.xwz), Struct_3(var_0.a, vec2<bool>(var_1.b.x, global1.x), -1i, var_1.d)), select(vec4<bool>(var_0.b.x, var_1.b.x, var_0.b.x, false), !vec4<bool>(var_1.b.x, false, global1.x, true), func_3(arg_1, var_0.b.x, Struct_2(var_1.b.x, var_1.d.x, var_1.d.x, vec3<u32>(1u, 0u, 42315u)), Struct_3(var_0.a, var_0.b, -10565i, vec2<f32>(var_1.d.x, arg_1)))), any(vec3<bool>(true, var_1.b.x, true)) || any(vec4<bool>(true, var_1.b.x, global1.x, true))), func_3(arg_1, select(select(var_1.b.x, false, var_1.b.x) && true, global1.x, _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(-arg_1)), Struct_2(var_1.b.x != func_2(Struct_3(var_0.a, var_0.b, u_input.a, var_1.d), vec4<i32>(arg_3, -10706i, var_0.c, arg_3), 0i).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(-169f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-404f, arg_1))), u_input.c.xyx), func_2(Struct_3(var_1.a, !var_1.b, ~var_0.a.x, vec2<f32>(-275f, var_1.d.x)), var_0.a, firstLeadingBit(16729i))), !vec4<bool>(any(global1.xww), any(!global1.zwx), !global1.x, func_3(_wgslsmith_f_op_f32(-1005f - var_0.d.x), !var_0.b.x, Struct_2(true, var_1.d.x, var_1.d.x, global0.xwz), func_2(Struct_3(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x), var_0.a.x, vec2<f32>(arg_1, var_1.d.x)), var_1.a, -2147483647i)).x));
    return max(~countOneBits(_wgslsmith_mult_u32(~u_input.b, 1u)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~37058u);
    var_0 = u_input.c.x;
    var_0 = ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(1u, func_1(vec2<u32>(global0.x, global0.x), -1236f, 0u, u_input.a))), ~u_input.c.x, true);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -291f)))))), -973f, 314f);
    let var_2 = vec3<bool>(false, all(vec4<bool>(true, all(vec4<bool>(false, true, global1.x, true)), true, any(vec2<bool>(global1.x, global1.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.x, 682f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_1.x, -1497f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(-1810f, var_1.x, 135f))), vec3<f32>(-834f, var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(380f, var_1.x, var_1.x))))))), u_input.b, _wgslsmith_clamp_vec4_i32(firstLeadingBit(reverseBits(-vec4<i32>(2107i, u_input.a, u_input.a, 2578i))), vec4<i32>(reverseBits(19229i), 60031i, select(u_input.a, u_input.a, true) & -1i, 0i), func_2(Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(-31739i, 1i, u_input.a, -47302i), vec4<i32>(34391i, u_input.a, 2147483647i, u_input.a)), select(vec2<bool>(var_2.x, true), global1.zz, vec2<bool>(false, global1.x)), u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(435f, var_1.x))), -vec4<i32>(u_input.a, -3272i, u_input.a, u_input.a) ^ -vec4<i32>(1i, 2147483647i, 0i, 0i), 0i << (firstLeadingBit(4294967295u) % 32u)).a), -select(u_input.a, -56700i, true));
}

