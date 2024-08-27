struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(25966u, 57782u, 12241u, 0u, 0u, 0u, 4294967295u, 6476u, 18351u, 4294967295u, 22581u, 0u, 1u, 4294967295u, 4294967295u, 2375u, 43430u, 4294967295u, 1u, 4264u, 1u, 41019u, 1u, 0u, 0u, 24416u, 59035u, 71672u, 4294967295u, 24184u);

var<private> global1: array<Struct_3, 29>;

var<private> global2: array<i32, 15> = array<i32, 15>(-47459i, -48106i, 2147483647i, -44453i, i32(-2147483648), -34163i, i32(-2147483648), 30172i, 2147483647i, -1i, 2147483647i, -31517i, -4567i, 2147483647i, 48046i);

var<private> global3: array<vec3<f32>, 29>;

var<private> global4: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<u32, 30>();
    var var_0 = abs(-select(-20939i, 1i << (arg_3.a % 32u), all(vec3<bool>(true, arg_1.d.b.b, arg_2.c)))) << (1u % 32u);
    let var_1 = select(!(!vec3<bool>(global4.c, select(arg_1.d.b.c, global4.a.x, false), !arg_3.c)), select(vec3<bool>(true, arg_1.d.c.x, !(arg_3.c & true)), select(!select(vec3<bool>(arg_3.c, global4.a.x, true), vec3<bool>(false, arg_1.d.e.d.c, true), arg_1.b.c), arg_1.b.a, select(global4.a, !arg_1.d.c.zwy, select(global4.a, arg_1.b.a, false))), !(_wgslsmith_div_f32(arg_1.d.d, arg_0) < _wgslsmith_f_op_f32(514f - arg_0))), select(select(select(global4.a, vec3<bool>(arg_3.b, global4.c, true), arg_3.b), !arg_1.b.a, !global4.a), vec3<bool>(select(any(vec4<bool>(false, false, arg_2.b, false)), true, arg_3.b), false, false), vec3<bool>(true, !arg_1.b.c, global4.d.c)));
    var var_2 = global3[_wgslsmith_index_u32(abs(reverseBits(0u)), 29u)];
    var var_3 = arg_1.d.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b) * arg_1.d.e.e.b);
}

fn func_2() -> Struct_5 {
    global2 = array<i32, 15>();
    global2 = array<i32, 15>();
    global4 = Struct_2(!(!global4.a), _wgslsmith_f_op_vec3_f32(func_3(global4.b.x, Struct_5(2001u, Struct_2(global4.a, _wgslsmith_div_vec3_f32(global4.b, global3[_wgslsmith_index_u32(31298u, 29u)]), global4.c, Struct_1(global0[_wgslsmith_index_u32(global4.d.a, 30u)], global4.a.x, global4.d.b)), reverseBits(1i), Struct_4(1f, Struct_1(11828u, global4.c, false), select(vec4<bool>(true, global4.d.c, global4.d.b, global4.a.x), vec4<bool>(global4.c, true, false, true), vec4<bool>(global4.c, global4.a.x, global4.a.x, false)), 955f, global1[_wgslsmith_index_u32(global4.d.a & global4.d.a, 29u)])), Struct_1(~1u, global4.a.x, true), Struct_1(_wgslsmith_mult_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)]), 53828u), true, global4.d.b))), all(!vec4<bool>(global4.d.c, all(global4.a), all(global4.a.zy), global2[_wgslsmith_index_u32(38118u, 15u)] > -6661i)), global4.d);
    return Struct_5(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, global4.d.a), reverseBits(vec3<u32>(4097u, u_input.a.x, u_input.b))), vec3<u32>(1u, global4.d.a, ~global4.d.a)), Struct_2(!(!global4.a), vec3<f32>(global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.x - global4.b.x)), _wgslsmith_f_op_f32(-global4.b.x)), global4.c, Struct_1(firstTrailingBit(1u), true, !(!global4.c))), global2[_wgslsmith_index_u32(u_input.b, 15u)], Struct_4(_wgslsmith_f_op_f32(-global4.b.x), global4.d, !vec4<bool>(true, true, true, select(false, false, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) * -787f), _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), any(global4.a))), Struct_3(1u << (_wgslsmith_add_u32(global4.d.a, 3814u) % 32u), true, all(!vec4<bool>(true, global4.a.x, false, false)), global4.d, Struct_2(vec3<bool>(true, false, true), global3[_wgslsmith_index_u32(4294967295u, 29u)], any(vec4<bool>(false, true, global4.c, global4.c)), Struct_1(global4.d.a, global4.a.x, global4.c)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -135f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.d.e.e.b.zy))))), global4.b.xz))));
    global2 = array<i32, 15>();
    let var_2 = vec2<i32>(~abs(1i), i32(-1i) * -69540i);
    global3 = array<vec3<f32>, 29>();
    return Struct_1(32703u << (var_0.b.d.a % 32u), !(!(!global4.c)), func_2().b.c | var_0.b.d.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = func_2();
    global1 = array<Struct_3, 29>();
    var var_1 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(~(~arg_3.xx)), arg_3.zx, firstLeadingBit(~(~arg_3.xz & u_input.a.yz)));
    global0 = array<u32, 30>();
    var var_2 = Struct_2(!(!vec3<bool>(!var_0.d.c.x, any(var_0.d.e.e.a.yx), global4.d.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(0u, 29u)])))), _wgslsmith_f_op_f32(-global4.b.x) < _wgslsmith_f_op_f32(var_0.d.d * -1188f), func_1());
    return !(true || any(select(vec2<bool>(arg_2.c, true), vec2<bool>(arg_2.c, true), select(var_0.b.d.c, false, var_2.d.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(global2[_wgslsmith_index_u32(4294967295u, 15u)]) != min(~11066i, reverseBits(global2[_wgslsmith_index_u32(1u, 15u)]));
    var var_1 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(global4.d.c, true)) | any(!vec4<bool>(global4.d.c, global4.c, global4.d.c, global4.c)), !(!global4.c), any(select(global4.a, !global4.a, true))), select(vec4<bool>(func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(13443u, u_input.a.x, 0u), u_input.a), global4.d.a, func_1(), select(vec3<u32>(u_input.b, 26136u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), u_input.a, vec3<bool>(global4.a.x, global4.d.b, true))), all(global4.a.zx), any(!vec2<bool>(false, global4.a.x)), !(!global4.a.x)), select(select(func_2().d.c, !vec4<bool>(false, global4.c, global4.c, global4.d.c), select(vec4<bool>(global4.a.x, global4.a.x, global4.c, global4.a.x), vec4<bool>(global4.d.b, global4.c, global4.c, global4.c), vec4<bool>(false, false, global4.a.x, global4.c))), !select(vec4<bool>(global4.c, false, true, false), vec4<bool>(false, global4.a.x, global4.d.c, false), false), all(vec3<bool>(global4.a.x, true, false))), vec4<bool>(any(func_2().d.c), !global4.a.x, any(select(vec4<bool>(true, false, global4.d.c, true), vec4<bool>(false, global4.c, global4.a.x, false), global4.c)), true)), !vec4<bool>(!(!global4.c), true, true, global4.d.b));
    global4 = func_2().d.e.e;
    var_1 = select(!func_2().d.c, vec4<bool>(true, var_1.x, global4.a.x, firstTrailingBit(select(4294967295u, 32978u, global4.a.x)) <= ~43693u), select(func_2().d.c, !(!vec4<bool>(global4.c, false, var_1.x, global4.d.b)), ((var_1.x | var_1.x) == true) & ((var_1.x != false) || true)));
    var var_2 = select(!vec2<bool>(var_1.x, var_1.x), !vec2<bool>(!any(vec2<bool>(var_1.x, false)), true), true);
    global2 = array<i32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.x, ~_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(3519u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(global4.d.a, 15u)])) << (vec2<u32>(_wgslsmith_div_u32(1u, ~62164u), 0u) % vec2<u32>(32u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, global4.d.a, 4294967295u, global0[_wgslsmith_index_u32(global4.d.a, 30u)]), vec4<u32>(77738u, global0[_wgslsmith_index_u32(u_input.b, 30u)], 18186u, global4.d.a) ^ vec4<u32>(0u, 1u, global4.d.a, 305u))));
}

