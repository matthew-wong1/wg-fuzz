struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 15> = array<f32, 15>(-510f, -253f, -1146f, -1000f, -627f, -949f, -147f, -762f, 799f, -2362f, -832f, -1388f, -152f, 1000f, 602f);

var<private> global2: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(4294967295u, 4294967295u, 7848u), vec3<u32>(0u, 30690u, 52858u), vec3<u32>(84433u, 4294967295u, 1u), vec3<u32>(1u, 0u, 143042u), vec3<u32>(1u, 126594u, 96391u), vec3<u32>(1u, 1u, 76611u), vec3<u32>(11725u, 0u, 0u), vec3<u32>(6265u, 0u, 57552u), vec3<u32>(1u, 54387u, 5052u), vec3<u32>(12729u, 146528u, 4294967295u), vec3<u32>(1u, 36668u, 7657u), vec3<u32>(16708u, 52672u, 4294967295u), vec3<u32>(41604u, 26643u, 62736u), vec3<u32>(0u, 40859u, 102035u), vec3<u32>(127218u, 34558u, 111276u), vec3<u32>(13896u, 0u, 0u), vec3<u32>(1u, 4237u, 1u), vec3<u32>(4294967295u, 19788u, 0u), vec3<u32>(0u, 1u, 84416u), vec3<u32>(0u, 33664u, 30773u), vec3<u32>(24525u, 1u, 4294967295u), vec3<u32>(33784u, 15143u, 7067u), vec3<u32>(4294967295u, 0u, 0u));

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<u32>(27767u, 141797u, 1u, 1u), i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global1 = array<f32, 15>();
    let var_0 = true;
    let var_1 = abs(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(arg_1.a.a.x, global3.a.a.x)), 13021u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global3.a.a.x, 40697u), global2[_wgslsmith_index_u32(arg_2.c.a.x, 23u)])), global3.a.a.x, 84191u));
    let var_2 = select(select(false, _wgslsmith_div_u32(66179u, arg_2.b.a.x) <= var_1.x, false), true, var_0);
    var var_3 = ~12818i;
    return ~var_1.x >> (arg_2.a.a.x % 32u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = vec3<u32>(1u << (global3.a.a.x % 32u), arg_0.b.a.x, ~(~arg_0.c.a.x));
    global0 = -349f;
    var var_1 = ~firstTrailingBit(countOneBits(countOneBits(arg_1.b)));
    var var_2 = global1[_wgslsmith_index_u32(arg_0.c.a.x, 15u)];
    var var_3 = Struct_2(arg_2, arg_2, arg_1);
    return select(reverseBits(reverseBits(~(var_3.a.a.x & arg_1.a.x))), var_3.a.a.x, true);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<f32>) -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(42831u, 15u)] + _wgslsmith_f_op_f32(f32(-1f) * -799f));
    var var_0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_0.a.a.x != 1u)));
    var_0 = vec4<bool>(select(false, !var_0.x, _wgslsmith_mod_i32(global3.a.b, _wgslsmith_div_i32(arg_0.a.b, global3.a.b)) != global3.a.b), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.x, select(23497u, 1u, false)), func_3(Struct_2(Struct_1(vec4<u32>(arg_0.a.a.x, arg_1.x, 0u, 1u), global3.a.b), Struct_1(vec4<u32>(16234u, 4294967295u, global3.a.a.x, 4294967295u), 27024i), arg_0.a), arg_0.a, global3.a, Struct_1(vec4<u32>(1u, global3.a.a.x, global3.a.a.x, u_input.a.x), arg_0.a.b))) >= u_input.a.x, var_0.x, var_0.x);
    let var_1 = var_0.xyw;
    var var_2 = !any(!select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, true, false, false), true));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 23>();
    global2 = array<vec3<u32>, 23>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-720f)));
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(0i << (func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1645f, 1277f)), Struct_2(global3.a, global3.a, global3.a), Struct_2(global3.a, Struct_1(vec4<u32>(24168u, 17147u, 127611u, 4294967295u), global3.a.b), global3.a)) % 32u), global3.a.b), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_sub_i32(~191i, 1i)), ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global3.a.b, global3.a.b), vec2<i32>(32354i, 56780i)), min(vec2<i32>(global3.a.b, global3.a.b), vec2<i32>(-2147483647i, global3.a.b)))));
    global3 = func_2(Struct_3(Struct_1(vec4<u32>(global3.a.a.x, 44629u, _wgslsmith_div_u32(global3.a.a.x, u_input.a.x), 36277u), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, -73315i, var_0.x), vec3<i32>(global3.a.b, 0i, var_0.x), true), vec3<i32>(2147483647i, 0i, 916i)))), global3.a.a.zw & ~vec2<u32>(~global3.a.a.x, min(40957u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2759f, -1202f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(22635u, 15u)], global1[_wgslsmith_index_u32(global3.a.a.x, 15u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<f32>(global1[_wgslsmith_index_u32(0u, 15u)], 1326f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1203f, -1725f) - vec2<f32>(-205f, global1[_wgslsmith_index_u32(56815u, 15u)])))) * vec2<f32>(134f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~11955u, 15u)]))));
    var var_1 = Struct_2(global3.a, Struct_1(vec4<u32>(reverseBits(61541u), ~global3.a.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u), u_input.a.x) >> (vec4<u32>(global3.a.a.x, abs(89755u), abs(1u), 29023u) % vec4<u32>(32u)), global3.a.b & -min(var_0.x, global3.a.b)), func_2(Struct_3(global3.a), u_input.a.xx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-750f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]) + vec2<f32>(-469f, global1[_wgslsmith_index_u32(global3.a.a.x, 15u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(350f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)])))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1335f, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(var_1.a.a.x, 15u)]))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(5233u, 15u)], -545f) * vec3<f32>(-979f, -502f, 1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(45810u, 15u)], global1[_wgslsmith_index_u32(4995u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]) + vec3<f32>(global1[_wgslsmith_index_u32(19758u, 15u)], -1424f, global1[_wgslsmith_index_u32(31996u, 15u)])))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 986f, global1[_wgslsmith_index_u32(16819u, 15u)]) + vec3<f32>(global1[_wgslsmith_index_u32(global3.a.a.x, 15u)], -2511f, 323f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(20331u, 15u)], global1[_wgslsmith_index_u32(25467u, 15u)], 483f), vec3<f32>(global1[_wgslsmith_index_u32(101569u, 15u)], -784f, 1550f), vec3<bool>(true, true, true))))))), ~_wgslsmith_div_vec2_u32(min(var_1.a.a.yw, ~vec2<u32>(u_input.a.x, global3.a.a.x)), vec2<u32>(~4294967295u, u_input.a.x)));
}

