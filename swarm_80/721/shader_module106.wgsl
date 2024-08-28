struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-4657i, -35173i, -1i, 1i, -10459i, 8706i, i32(-2147483648), -1i, -45728i, 0i, 2147483647i, -29618i, -38709i, 0i, 0i, -22962i, -1670i, 2147483647i, -13602i, -1i, -1i, 1i, 34818i, 2147483647i);

var<private> global1: Struct_3 = Struct_3(1000f, vec2<u32>(80829u, 0u), 16353i);

var<private> global2: array<u32, 9>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    return vec3<bool>(global3.x, select(any(vec3<bool>(!global3.x, global1.a <= global1.a, all(vec4<bool>(false, global3.x, global3.x, global3.x)))), true, true), all(vec3<bool>(false, !global3.x, any(select(vec4<bool>(false, false, global3.x, false), vec4<bool>(global3.x, true, false, false), vec4<bool>(true, false, false, global3.x))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<bool>(any(select(select(func_3(), select(vec3<bool>(false, false, global3.x), vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, global3.x, true)), select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, true, false))), !func_3(), !func_3())), !func_3().x, !global3.x);
    let var_1 = Struct_2(vec4<bool>(false, any(!select(vec3<bool>(global3.x, var_0.x, global3.x), vec3<bool>(global3.x, false, true), true)), false, global3.x));
    global2 = array<u32, 9>();
    let var_2 = select(!vec3<bool>(true, false, global3.x), var_1.a.xxx, all(vec2<bool>(false, global0[_wgslsmith_index_u32(67503u, 24u)] > 1i)) || !global3.x);
    global0 = array<i32, 24>();
    return var_1;
}

fn func_1() -> vec3<bool> {
    global3 = vec3<bool>(!global3.x, !(!any(!vec3<bool>(true, global3.x, false))), global3.x);
    global0 = array<i32, 24>();
    var var_0 = Struct_3(global1.a, ~(~firstLeadingBit(~vec2<u32>(global2[_wgslsmith_index_u32(20969u, 9u)], 18722u))), -(~21789i));
    var var_1 = func_2(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.a.x, -2147483647i)), _wgslsmith_sub_vec2_i32(u_input.a.xy, firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i)) ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -80682i))), u_input.c, min(~vec4<u32>(_wgslsmith_div_u32(1u, 25583u), var_0.b.x & global1.b.x, 1u, var_0.b.x), vec4<u32>(global1.b.x, 4350u, countOneBits(29959u) | abs(u_input.b.x), global1.b.x)));
    global1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-800f - -1000f), _wgslsmith_f_op_f32(select(global1.a, -420f, all(vec3<bool>(true, var_1.a.x, var_1.a.x))))))), var_0.b, global0[_wgslsmith_index_u32(max(95479u, global1.b.x), 24u)]);
    return var_1.a.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global1.a) * -221f), global1.a)), global1.b, 1i);
    var var_0 = true;
    var var_1 = Struct_1(676f, vec2<i32>(u_input.d.x, ~(~u_input.a.x)) & (vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), ~(-18241i)) << (~(vec2<u32>(global2[_wgslsmith_index_u32(59012u, 9u)], u_input.b.x) << (vec2<u32>(global2[_wgslsmith_index_u32(global1.b.x, 9u)], 42549u) % vec2<u32>(32u))) % vec2<u32>(32u))), -1000f);
    var var_2 = 68393i;
    global2 = array<u32, 9>();
    var var_3 = vec4<bool>(global3.x, !(!(global3.x & true)), all(func_1()), true);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x);
}

