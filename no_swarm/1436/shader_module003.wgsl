struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(5264i, vec2<i32>(-8385i, 1i));

var<private> global2: array<vec2<u32>, 11>;

var<private> global3: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(i32(-2147483648), 2147483647i, 12989i, i32(-2147483648)), vec4<i32>(5704i, 2147483647i, 0i, 0i));

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(false, vec2<i32>(15982i, 70802i), 1i), Struct_1(false, vec2<i32>(2147483647i, 1i), 2147483647i), Struct_1(true, vec2<i32>(-8310i, -68028i), 6226i), Struct_1(true, vec2<i32>(0i, 31084i), 0i), Struct_1(false, vec2<i32>(2147483647i, 28015i), -1i), Struct_1(false, vec2<i32>(10494i, 13799i), 1i), Struct_1(false, vec2<i32>(-1i, 0i), 1i), Struct_1(false, vec2<i32>(i32(-2147483648), 236i), 2147483647i), Struct_1(false, vec2<i32>(-1i, -53046i), 17268i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> vec3<bool> {
    let var_0 = vec2<bool>(true, true);
    global3 = array<vec4<i32>, 2>();
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a, ~abs(vec2<i32>(-1i, u_input.a.x)) | vec2<i32>(i32(-1i) * -22760i, -_wgslsmith_clamp_i32(global1.b.x, 1i, 2147483647i)));
    let var_2 = false;
    global4 = array<Struct_1, 9>();
    return !vec3<bool>(true, any(vec4<bool>(!var_2, true, !var_0.x, true)), var_2);
}

fn func_3(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = Struct_2(~_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(31936u, 2u)], vec4<i32>(global1.b.x, u_input.a.x, 1i, global1.a))), -global3[_wgslsmith_index_u32(countOneBits(20519u), 2u)]), abs(countOneBits(_wgslsmith_mod_vec2_i32(global1.b | global1.b, firstLeadingBit(vec2<i32>(global1.b.x, 38490i))))));
    let var_1 = ~(i32(-1i) * -11462i);
    let var_2 = 1i;
    global3 = array<vec4<i32>, 2>();
    var var_3 = Struct_3(Struct_2(-44875i, min(vec2<i32>(0i, _wgslsmith_mod_i32(18778i, var_0.b.x)), -select(global1.b, u_input.a, false))));
    return Struct_4(firstLeadingBit(-6703i), Struct_2(-_wgslsmith_dot_vec2_i32(global1.b | var_3.a.b, vec2<i32>(var_1, var_3.a.a)), -abs(~u_input.a)), -vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.a, var_3.a.b)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.a, -1i), var_3.a.a), u_input.a.x), arg_0.x);
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = vec4<i32>(arg_0.b.a, u_input.a.x, countOneBits(~(-global1.b.x)), 1i) << (max(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 37028u, 43502u, 85640u), select(vec4<u32>(4294967295u, 17232u, 2567u, 18702u), vec4<u32>(0u, 4294967295u, 42146u, 17287u), true)) >> (countOneBits(vec4<u32>(1u, 47172u, 2342u, 1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(abs(97648u), firstLeadingBit(0u)), ~4294967295u, _wgslsmith_sub_u32(~46946u, ~95906u), _wgslsmith_sub_u32(60204u, 5682u))) % vec4<u32>(32u));
    let var_1 = var_0.x;
    return arg_0.d;
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    global3 = array<vec4<i32>, 2>();
    var var_0 = select(u_input.a.x != -2147483647i, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), all(vec2<bool>(true, false)))), all(vec2<bool>(true, true))) | true;
    var_0 = func_4(func_3(vec3<bool>(true, ~u_input.a.x > u_input.a.x, any(func_2()))));
    let var_1 = Struct_1(select(false, true, func_4(Struct_4(firstTrailingBit(17734i), func_3(vec3<bool>(true, true, false)).b, ~vec3<i32>(39774i, -45711i, 46250i), true))), ~global1.b, _wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(~(_wgslsmith_add_u32(79451u, arg_0.x) >> (1u % 32u)), 2u)], firstLeadingBit(global3[_wgslsmith_index_u32(~1u, 2u)])));
    var var_2 = func_3(!(!vec3<bool>(var_1.a && true, var_1.a, true))).b;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1036f - -1043f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(216f)), 1376f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1947f - _wgslsmith_f_op_f32(769f + 342f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1159f, 1486f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(487f, 332f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(274f, -233f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1552f, 243f) + vec2<f32>(755f, 1467f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1658f, 1030f) + vec2<f32>(-520f, 983f)))))));
    var var_1 = global3[_wgslsmith_index_u32(13663u, 2u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(~vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_div_vec3_f32(vec3<f32>(-140f, -1328f, -566f), vec3<f32>(-1267f, var_0.x, var_0.x)), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), 1i != var_1.x))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1943f, var_0.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.x, -709f), vec3<f32>(1342f, -560f, 1992f)))))), _wgslsmith_f_op_vec3_f32(func_1(~vec2<u32>(min(15530u, 0u), 1u)))));
    var_1 = global3[_wgslsmith_index_u32(1u, 2u)];
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -506f, 296f);
    global2 = array<vec2<u32>, 11>();
    let var_3 = 4294967295u;
    var var_4 = ~abs(vec4<i32>(-2147483647i, ~(global1.a | -1i), -select(0i, u_input.a.x, false), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 5161i, 1i), global3[_wgslsmith_index_u32(var_3, 2u)]), select(31826i, global1.a, true))));
    global1 = func_3(select(!vec3<bool>(true, true, 64575u >= var_3), vec3<bool>(true, true, true), vec3<bool>(true, false, 39680u < (var_3 >> (21585u % 32u))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1029f))), abs(var_3));
}

