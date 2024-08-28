struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<bool>(true, true, true), vec3<i32>(-38556i, -19403i, i32(-2147483648)), vec2<bool>(true, false), 752f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-27594i, 0i, -45257i), vec2<bool>(true, true), 824f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, -1i, -5040i), vec2<bool>(true, false), 477f), Struct_1(vec3<bool>(false, false, true), vec3<i32>(10212i, 1i, 7223i), vec2<bool>(true, true), 122f), Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, 0i, 19061i), vec2<bool>(true, false), 153f), Struct_1(vec3<bool>(true, true, false), vec3<i32>(20954i, 1387i, 1i), vec2<bool>(true, true), 1712f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(53783i, 12653i, i32(-2147483648)), vec2<bool>(true, true), -750f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, 83383i, i32(-2147483648)), vec2<bool>(true, false), 213f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(16632i, 31006i, -25253i), vec2<bool>(true, false), -599f), Struct_1(vec3<bool>(true, true, false), vec3<i32>(12753i, i32(-2147483648), 42902i), vec2<bool>(true, true), 591f), Struct_1(vec3<bool>(false, true, true), vec3<i32>(26926i, 23933i, -37421i), vec2<bool>(true, true), 752f), Struct_1(vec3<bool>(true, false, true), vec3<i32>(1i, -1297i, 43685i), vec2<bool>(true, false), 1000f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(13384i, -1i, -52771i), vec2<bool>(false, false), 213f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(2147483647i, -31330i, 1i), vec2<bool>(true, false), -1000f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, 2147483647i, 33983i), vec2<bool>(true, false), -389f), Struct_1(vec3<bool>(true, true, true), vec3<i32>(9334i, 0i, -1i), vec2<bool>(true, true), 447f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-49777i, 1i, -35302i), vec2<bool>(true, false), -1783f), Struct_1(vec3<bool>(false, true, false), vec3<i32>(27080i, -3438i, i32(-2147483648)), vec2<bool>(false, true), 948f), Struct_1(vec3<bool>(false, false, false), vec3<i32>(1i, 28917i, 0i), vec2<bool>(true, true), 2219f), Struct_1(vec3<bool>(true, false, false), vec3<i32>(32739i, 13524i, -38164i), vec2<bool>(true, true), -174f), Struct_1(vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 0i, -1i), vec2<bool>(true, true), -285f));

var<private> global3: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(51468u, 1u), vec2<u32>(0u, 31837u), vec2<u32>(20005u, 37475u), vec2<u32>(28601u, 2982u), vec2<u32>(1u, 6162u), vec2<u32>(54856u, 31485u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u));

var<private> global4: array<bool, 29>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    global3 = array<vec2<u32>, 8>();
    var var_0 = Struct_3(1298f, arg_2.d);
    var_0 = Struct_3(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1321f - 1000f), _wgslsmith_f_op_f32(-367f + -625f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.d))))), _wgslsmith_div_f32(var_0.a, arg_2.d));
    let var_1 = arg_2.a.zy;
    global2 = array<Struct_1, 21>();
    return select(arg_2.b, -arg_2.b, false) & arg_2.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec3<i32> {
    global4 = array<bool, 29>();
    global3 = array<vec2<u32>, 8>();
    var var_0 = false;
    return -(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -1i, arg_0.x), firstTrailingBit(vec3<i32>(arg_0.x, u_input.b, u_input.b))) | func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(571f, -1515f, 1711f, -650f) - vec4<f32>(2487f, 1000f, 391f, -420f)), _wgslsmith_clamp_u32(41580u, u_input.d, 45030u), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 15u)], vec3<i32>(-2147483647i, -2147483647i, -1i), arg_1, 291f))) | (vec3<i32>(u_input.b, firstLeadingBit(abs(u_input.b)), 1i) | _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, arg_0.x, 0i), select(vec3<i32>(-40888i, 1i, 6935i), vec3<i32>(-1i, 0i, 2147483647i), arg_1.x)), vec3<i32>(arg_0.x, ~16703i, arg_0.x)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec3<i32> {
    var var_0 = firstLeadingBit(-16125i);
    let var_1 = arg_0.d.b.x << (~_wgslsmith_dot_vec2_u32(global0.xw, u_input.c) % 32u);
    var var_2 = vec4<u32>(global0.x, _wgslsmith_sub_u32(~(~global0.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(74035u, 48820u, 40109u) ^ global0.xyy, _wgslsmith_div_vec3_u32(global0.xxw, vec3<u32>(arg_1, 4294967295u, arg_1)))), global0.x, global0.x);
    let var_3 = 16607u;
    global1 = array<vec3<bool>, 15>();
    return ~vec3<i32>(u_input.b, firstLeadingBit(-5636i), _wgslsmith_mod_i32(1i, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 8>();
    global1 = array<vec3<bool>, 15>();
    global2 = array<Struct_1, 21>();
    let var_0 = select(firstTrailingBit(select(select(func_1(vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, global4[_wgslsmith_index_u32(13573u, 29u)]), global1[_wgslsmith_index_u32(global0.x, 15u)]), func_3(Struct_2(vec4<i32>(1i, u_input.b, 2147483647i, u_input.b), 418f, 17482u, global2[_wgslsmith_index_u32(u_input.a, 21u)], global1[_wgslsmith_index_u32(0u, 15u)]), 4294967295u), vec3<bool>(false, true, global4[_wgslsmith_index_u32(global0.x, 29u)])), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 29678i, u_input.b), vec3<i32>(-36864i, u_input.b, 42757i)), vec3<i32>(-1i, 2147483647i, u_input.b)), !(!vec3<bool>(true, global4[_wgslsmith_index_u32(global0.x, 29u)], global4[_wgslsmith_index_u32(0u, 29u)])))), firstLeadingBit(vec3<i32>(u_input.b & _wgslsmith_add_i32(-48547i, 36798i), u_input.b, -3209i)), global4[_wgslsmith_index_u32(40148u, 29u)]);
    let var_1 = reverseBits(i32(-1i) * -25441i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1623f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1178f + _wgslsmith_f_op_f32(abs(308f))) + _wgslsmith_f_op_f32(-1152f + _wgslsmith_f_op_f32(ceil(320f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(278f)), _wgslsmith_div_f32(-675f, _wgslsmith_f_op_f32(-757f - 1000f)))), firstLeadingBit(countOneBits(firstTrailingBit(var_0))), var_0);
}

