struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<f32, 17>;

var<private> global3: array<Struct_5, 21>;

var<private> global4: array<vec4<u32>, 1>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), global0.a >= _wgslsmith_f_op_f32(-151f * 957f)), select(vec2<bool>(arg_0, true), !select(select(vec2<bool>(false, false), vec2<bool>(arg_0, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), arg_0), select(vec2<bool>(u_input.a > 7941i, false), select(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, arg_0), arg_0), !(arg_0 && arg_0))), !(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), true))));
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(max(max(13245u, u_input.b.x) | u_input.b.x, abs(countOneBits(u_input.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.yw), _wgslsmith_add_u32(0u, u_input.b.x), 4294967295u), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(0u), 38971u), 1u)])), 21u)];
    let var_2 = -79492i;
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(var_1.a))));
    let var_4 = -1i;
    return 0u;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(-1164f);
    var var_0 = 1u;
    let var_1 = false;
    var var_2 = -(~vec3<i32>(51215i, -_wgslsmith_sub_i32(u_input.a, -21904i), -1i));
    let var_3 = _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(u_input.b.x, 8201u, ~u_input.b.x)), ~(~select(reverseBits(u_input.b.yzx), u_input.b.ywx, vec3<bool>(var_1, false, var_1))), vec3<u32>(~33362u, ~_wgslsmith_div_u32(select(u_input.b.x, 4294967295u, var_1), u_input.b.x), firstLeadingBit(func_3(all(vec3<bool>(var_1, false, var_1))))));
    return Struct_1(444f);
}

fn func_1() -> bool {
    let var_0 = -878f;
    let var_1 = func_2();
    return select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 * -387f)))) > var_0, true, !select(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true))));
}

fn func_4(arg_0: bool) -> Struct_1 {
    var var_0 = !(!(!(!(!vec3<bool>(true, arg_0, false)))));
    var var_1 = u_input.a ^ (u_input.a >> (39595u % 32u));
    var_1 = 2147483647i;
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 29>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26800u, 17u)]), -692f)), vec2<i32>(i32(-1i) * -u_input.a, -26298i), -1000f, func_4(!(!func_1())), Struct_3(-abs(vec3<i32>(u_input.a, u_input.a, -5775i) >> (vec3<u32>(u_input.b.x, 1u, 4960u) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(51948u, 29u)], ~reverseBits(~39809u), false));
    global3 = array<Struct_5, 21>();
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_4(func_4(!(var_0.e.e == var_0.e.e) && true), var_0.e.b, func_2());
    let var_2 = true;
    var var_3 = Struct_5(var_0.a, _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(25652i, u_input.a) | vec2<i32>(26248i, 0i), firstLeadingBit(var_0.b << (u_input.b.zx % vec2<u32>(32u)))), abs(var_0.e.a.zz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.a)))) - -685f), var_1.b.a, Struct_3(var_0.e.a, var_0.e.c, var_1.b, u_input.b.x, true));
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec4<u32>(4294967295u, u_input.b.x, firstTrailingBit(var_3.e.d), min(4294967295u, var_4)), select(global4[_wgslsmith_index_u32(u_input.b.x, 1u)], global4[_wgslsmith_index_u32(~var_3.e.d, 1u)], true), !var_3.e.e)), ~(-min(-vec4<i32>(1i, -2147483647i, u_input.a, -28218i), _wgslsmith_mod_vec4_i32(vec4<i32>(-11129i, 22652i, 0i, 34699i), vec4<i32>(1050i, -53191i, var_0.b.x, 0i)))), vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.a.a)), global0.a, 1174f, _wgslsmith_f_op_f32(-1000f + var_1.b.a.a)), 10782u);
}

