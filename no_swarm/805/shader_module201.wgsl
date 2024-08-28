struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false));

var<private> global1: i32;

var<private> global2: Struct_2;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(1u, 66932u, 91055u, 4294967295u), 1257f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global2 = Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i & u_input.c, firstTrailingBit(-2147483647i)), global2.a), vec2<i32>(max(countOneBits(27064i), 1i), abs(~20745i))), all(!(!select(vec4<bool>(global2.b, true, global2.b, true), global0[_wgslsmith_index_u32(global4.a.x, 13u)], global2.c))), global2.b, global2.d);
    global4 = global2.d;
    let var_0 = reverseBits(max(_wgslsmith_div_vec3_i32(vec3<i32>(-7061i, 1i, u_input.c), vec3<i32>(global2.a.x, u_input.c, u_input.c)), vec3<i32>(u_input.c, -u_input.c, _wgslsmith_sub_i32(u_input.c, -17344i))) ^ vec3<i32>(global2.a.x, min(select(u_input.c, -54773i, global2.c), -2147483647i), u_input.c));
    global2 = Struct_2(countOneBits(_wgslsmith_sub_vec2_i32(abs(min(vec2<i32>(global2.a.x, -1i), vec2<i32>(33774i, -54689i))), abs(reverseBits(global2.a)))), true, any(select(!vec4<bool>(global2.b, global2.b, false, global2.b), vec4<bool>(global2.c, !global2.c, 0u <= global2.d.a.x, select(false, global2.b, global2.b)), any(select(vec3<bool>(global2.c, true, global2.b), vec3<bool>(global2.b, global2.b, global2.c), global2.b)))), global2.d);
    return false;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_3(Struct_1(~global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d.b))) - global4.b)), arg_0.zx, _wgslsmith_mod_vec3_u32(global2.d.a.wwz, global4.a.yzx), global4.a.x, true);
    var var_1 = var_0.c.yy;
    let var_2 = !vec3<bool>(reverseBits(u_input.c) != -(~global2.a.x), global2.b, all(!vec2<bool>(var_0.e, var_0.b.x)) && false);
    var_0 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.b - global2.d.b))) * _wgslsmith_f_op_f32(ceil(-204f)))), var_2.xy, countOneBits(global2.d.a.wwy), 17662u, true);
    var var_3 = vec4<bool>(true | var_2.x, arg_0.x, any(vec4<bool>(var_0.e, true, true, true)), any(vec2<bool>(func_3(vec2<f32>(-1538f, 420f)), true || global2.b)) | (global2.c | (global2.a.x != 1i)));
    return any(!global0[_wgslsmith_index_u32(global4.a.x, 13u)]) | true;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    let var_0 = false;
    var var_1 = max(0i, -2147483647i);
    global0 = array<vec4<bool>, 13>();
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(sign(global2.d.b)));
    global0 = array<vec4<bool>, 13>();
    return -436f;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> f32 {
    var var_0 = select(!arg_1.b, arg_1.b, !arg_1.b);
    global3 = !global2.b;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(!vec4<bool>(false, true, func_2(vec3<bool>(global2.c, arg_1.e, true)), !global2.b), ~global2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!global2.b, all(!vec2<bool>(!global2.c, true)), true, true);
    global1 = u_input.c >> (~_wgslsmith_mod_u32(_wgslsmith_mult_u32(75705u, global4.a.x), select(u_input.d, global4.a.x, false)) % 32u);
    global3 = false;
    var var_1 = ~(456u ^ global2.d.a.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -197f));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(select(0u, ~u_input.a, global2.d.a.x < 5081u), firstTrailingBit(global4.a.x)) >> (global4.a.x % 32u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global4.a, vec4<u32>(0u, global4.a.x, u_input.d, 1u)) << (~global4.a.x % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, global4.a.x))), global2.d.a.x, ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(global4.a.x)), ~vec3<i32>(u_input.c, u_input.c, _wgslsmith_sub_i32(abs(u_input.c), u_input.c >> (4294967295u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.b, global4.b, 404f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(708f, global2.d.b, 1294f) - vec3<f32>(global4.b, global4.b, -302f))) + vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec2<i32>(2147483647i, u_input.c), var_0.x, var_0.x, Struct_1(global4.a, var_2)), Struct_3(Struct_1(global2.d.a, global2.d.b), vec2<bool>(var_0.x, false), global2.d.a.xzy, 75687u, true), var_3.x)), _wgslsmith_f_op_f32(var_2 - global4.b), _wgslsmith_f_op_f32(ceil(116f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.d.b, 1769f, -1000f), vec3<f32>(-758f, -857f, global2.d.b), global2.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.d.b, -349f, -1608f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.b, global4.b, -1921f))))))), vec2<i32>(global2.a.x, abs(global2.a.x)));
}

