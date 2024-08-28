struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 14>;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-3275i, 10412i), -25051i, Struct_1(false, 1855i, vec2<bool>(false, true), vec4<f32>(1182f, 243f, 528f, -427f), vec3<bool>(true, false, false)), true);

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 9857i, 26837i);

var<private> global3: array<vec3<bool>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = array<vec3<u32>, 14>();
    let var_0 = _wgslsmith_add_i32(-1i, ~u_input.d);
    global3 = array<vec3<bool>, 5>();
    var var_1 = Struct_1(any(vec2<bool>(any(global1.c.e) && true, true)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.b, max(1i, 9620i), -10714i, var_0), -vec4<i32>(global1.b, u_input.d, u_input.d, global1.a.x) ^ ~reverseBits(vec4<i32>(0i, -25159i, 0i, u_input.d))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -250f, global1.c.d.x, global1.c.d.x) - global1.c.d), vec4<f32>(_wgslsmith_f_op_f32(704f * global1.c.d.x), global1.c.d.x, global1.c.d.x, _wgslsmith_f_op_f32(-global1.c.d.x)))))), !(!(!(!global1.c.e))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-481f, 1000f), global1.c.d.x, !(37535u < _wgslsmith_add_u32(48247u, ~u_input.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.c.d.x)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = Struct_2(-firstLeadingBit(select(vec2<i32>(-2147483647i, arg_1.c.b), vec2<i32>(-14704i, 0i) ^ arg_0.c.xy, false)), global2.x << (u_input.b.x % 32u), arg_0.b, true);
    global1 = Struct_2(vec2<i32>(1i, 31605i), _wgslsmith_mod_i32(-33481i, -13612i), Struct_1(all(vec2<bool>(var_0.d == true, all(vec2<bool>(false, arg_0.a.e.x)))), global1.a.x, vec2<bool>(true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1134f, -2067f, arg_1.c.d.x, -371f))))), select(select(var_0.c.e, vec3<bool>(arg_1.d, true, true), arg_1.c.a | true), select(arg_1.c.e, vec3<bool>(true, global1.c.e.x, arg_1.d), false), arg_0.a.a)), all(select(select(vec4<bool>(false, false, arg_1.d, false), vec4<bool>(true, arg_0.b.a, true, var_0.d), true), vec4<bool>(true, false, arg_1.c.c.x, arg_0.b.a), !vec4<bool>(false, true, arg_1.d, true))) && var_0.d);
    let var_1 = 196f;
    let var_2 = global0[_wgslsmith_index_u32(~(~1u), 14u)] >> (firstLeadingBit(max(vec3<u32>(~104200u, u_input.c.x, u_input.c.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 23772u, u_input.c.x), global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<u32>(35914u, u_input.b.x, 10832u)))) % vec3<u32>(32u));
    var var_3 = Struct_1(true, _wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_mod_i32(reverseBits(var_0.a.x ^ 2147483647i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, global2.x, arg_0.b.b)), -arg_0.c.yyz))), select(vec2<bool>(5617u <= ~u_input.b.x, true), select(vec2<bool>(false, arg_0.b.e.x), select(global1.c.e.zz, var_0.c.c, global1.c.e.yx), !select(vec2<bool>(true, true), arg_0.b.e.xx, arg_1.c.e.zz)), true | any(vec4<bool>(arg_0.a.a, arg_1.c.a, false, global1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(237f, -140f, arg_0.a.d.x, -400f), arg_1.c.d, arg_1.d)) - vec4<f32>(1f, 1f, 1f, 1f)))), select(select(select(select(var_0.c.e, global1.c.e, false), !vec3<bool>(var_0.d, arg_0.a.e.x, global1.d), !global1.c.e), !var_0.c.e, false), !select(!global3[_wgslsmith_index_u32(var_2.x, 5u)], vec3<bool>(false, arg_1.d, true), arg_0.b.e.x), arg_0.a.c.x));
    return vec4<i32>(~abs(_wgslsmith_mod_i32(global2.x, var_0.a.x)), _wgslsmith_div_i32(global2.x, global2.x), global1.c.b, -abs(abs(29893i))) | firstTrailingBit(~(-arg_0.c & vec4<i32>(-1463i, var_0.b, u_input.a, arg_1.a.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    let var_0 = ~(1u ^ _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0, 5746u), _wgslsmith_div_u32(0u, arg_0))) >= abs(23759u ^ _wgslsmith_mod_u32(firstLeadingBit(0u), u_input.c.x));
    global2 = vec3<i32>(-1073i, _wgslsmith_dot_vec4_i32(vec4<i32>(~firstLeadingBit(global1.a.x), abs(~6842i), _wgslsmith_mod_i32(u_input.d, -2147483647i), 1i), func_3(Struct_3(global1.c, global1.c, ~vec4<i32>(global2.x, u_input.a, global1.c.b, global2.x)), Struct_2(-global1.a, 1i, global1.c, true))), countOneBits(countOneBits(_wgslsmith_mod_i32(-30957i, u_input.d)) << (arg_0 % 32u)));
    global1 = Struct_2(vec2<i32>(reverseBits(reverseBits(select(global1.a.x, global2.x, arg_1.x))), ~_wgslsmith_add_i32(global2.x, reverseBits(-2771i))), global2.x, global1.c, false);
    let var_1 = Struct_1(!var_0, 17357i, global1.c.c, vec4<f32>(global1.c.d.x, global1.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.d.x * -680f), 1191f)) - _wgslsmith_f_op_f32(-global1.c.d.x)), 1204f), arg_2.wzw);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d.x, 171f, all(vec4<bool>(true, !arg_1.x, true & var_1.a, all(vec4<bool>(false, global1.c.c.x, false, true)))))));
    return -800f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 876f;
    var var_1 = reverseBits(14280i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(0u)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_u32(30882u, 40681u), select(vec4<bool>(true, true, global1.c.a, global1.d), vec4<bool>(true, global1.c.a, false, true), vec4<bool>(global1.c.a, global1.c.e.x, global1.d, global1.c.c.x)), vec4<bool>(true, global1.d, false, global1.d))), _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c.d.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.d.x, var_0, global1.c.d.x, -406f)))))));
    let var_3 = global1.c.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~((vec3<i32>(global2.x, global2.x, global1.a.x) >> (global0[_wgslsmith_index_u32(u_input.b.x, 14u)] % vec3<u32>(32u))) ^ (vec3<i32>(1i, 27413i, u_input.d) ^ vec3<i32>(2147483647i, global1.b, -7177i))), -((vec3<i32>(u_input.a, -7456i, u_input.d) | vec3<i32>(global2.x, u_input.a, -35516i)) << (global0[_wgslsmith_index_u32(4294967295u, 14u)] % vec3<u32>(32u))), _wgslsmith_mod_i32(1i, global2.x) <= (u_input.d >> ((u_input.c.x >> (u_input.c.x % 32u)) % 32u))), global1.c.d.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-799f, _wgslsmith_f_op_f32(global1.c.d.x * 1196f), global1.c.e.x))) + _wgslsmith_f_op_f32(-var_2.x)), vec3<i32>(global1.b, ~global2.x, -79446i));
}

