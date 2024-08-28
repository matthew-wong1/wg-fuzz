struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: Struct_2 = Struct_2(true, true);

var<private> global2: vec4<u32> = vec4<u32>(1u, 65295u, 1u, 1u);

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(false, false), Struct_2(true, false), Struct_2(false, false), Struct_2(true, true), Struct_2(false, false), Struct_2(false, false), Struct_2(false, true), Struct_2(true, true), Struct_2(true, false), Struct_2(false, false), Struct_2(false, true), Struct_2(true, false), Struct_2(true, true), Struct_2(true, true), Struct_2(true, true), Struct_2(true, false), Struct_2(false, false), Struct_2(false, false), Struct_2(false, false), Struct_2(true, true), Struct_2(false, true), Struct_2(true, false), Struct_2(true, true), Struct_2(false, false), Struct_2(true, true), Struct_2(true, true), Struct_2(true, true), Struct_2(false, false), Struct_2(true, false));

var<private> global4: array<bool, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(max(~select(vec3<u32>(global2.x, u_input.a.x, 16834u), global2.ywy, false), max(abs(vec3<u32>(arg_0, global2.x, 0u)), global2.yyw))), vec3<u32>(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0, 0u, 14369u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<u32>(48189u, 0u, 4294967295u))), _wgslsmith_sub_u32(~reverseBits(arg_0), global2.x), 0u)), 13u)];
    let var_1 = 24742u;
    var var_2 = Struct_1(abs(global2.yyw), !select(vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 13u)], arg_2.x, global4[_wgslsmith_index_u32(u_input.a.x, 1u)])), arg_2.x, true), !select(vec3<bool>(true, true, true), arg_2.xwx, global1.a), (arg_2.x && true) && (arg_3.x <= 0i)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0, u_input.a.x, 22497u), firstTrailingBit(vec4<u32>(var_1, u_input.a.x, 0u, 4294967295u))) >> (~vec4<u32>(1u, global2.x, global2.x, 45951u) % vec4<u32>(32u))));
    let var_3 = Struct_2(var_2.b.x, any(select(!select(vec4<bool>(global1.b, false, var_2.b.x, false), arg_2, vec4<bool>(false, arg_2.x, true, true)), vec4<bool>(global1.a, true, true, true), !(!arg_2.x))));
    global3 = array<Struct_2, 29>();
    return _wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -783f), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), -364f))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(-17257i, 0i, 34115i), vec3<i32>(1i, 10949i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -1i, 1i), vec3<i32>(1i, 15046i, 4057i))), vec3<i32>(~2147483647i, countOneBits(46262i), firstTrailingBit(411i))) >> (_wgslsmith_mult_vec3_u32(select(global2.yxy, vec3<u32>(global2.x, 7783u, global2.x), true), global2.wwz) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, 871f, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 564f, 1198f, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -672f, arg_0.x) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 787f)), true)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~global2.x | global2.x, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(arg_0.x, -1437f)), _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x), vec4<bool>(true, any(vec4<bool>(global1.a, global4[_wgslsmith_index_u32(4294967295u, 1u)], true, global1.a)), false, true), vec4<i32>(-var_0.x, -var_0.x, ~25211i, 13728i))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), 172f, 418f, _wgslsmith_f_op_f32(arg_0.x + 819f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, 471f, -1965f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1050f, -523f, -511f, 320f))))));
    return Struct_1(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a.x, global2.x, u_input.a.x)), countOneBits(countOneBits(~global2.xyy)), ~vec3<u32>(global2.x, select(6479u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), global2.x ^ global2.x)), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u & global2.x, abs(~1u)), 13u)], global1.b, any(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(global2.x, 13u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 13u)], true), vec2<bool>(true, global4[_wgslsmith_index_u32(global2.x, 1u)]), vec2<bool>(true, true)), !global1.b))), abs(~(~vec4<u32>(28552u, 1u, u_input.a.x, 0u)) & vec4<u32>(u_input.a.x, ~u_input.a.x, ~global2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 77916u, global2.x), vec3<u32>(1u, 31531u, 100731u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1f), -1318f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<bool, 13>();
    global3 = array<Struct_2, 29>();
    global4 = array<bool, 1>();
    return arg_0.c.x;
}

fn func_1() -> Struct_1 {
    var var_0 = ~func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1718f), _wgslsmith_f_op_f32(max(-403f, 2055f)))), Struct_3(Struct_2(true, true), vec3<u32>(~0u, 0u, 0u), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, 0i, 14799i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, -1i, -12838i), vec4<i32>(0i, -8472i, -2083i, 0i), vec4<i32>(-18419i, 2147483647i, -40640i, 2147483647i)))));
    var_0 = _wgslsmith_add_u32(~select(u_input.a.x ^ 31122u, ~global2.x, false) << (1u % 32u), 110156u);
    global0 = array<bool, 13>();
    var_0 = min(~_wgslsmith_dot_vec3_u32(abs(min(global2.yww, vec3<u32>(u_input.a.x, 35591u, 48206u))), vec3<u32>(min(global2.x, 7637u), 62379u, firstTrailingBit(4294967295u))), _wgslsmith_add_u32(u_input.a.x >> ((23629u ^ (global2.x | u_input.a.x)) % 32u), 1u));
    var_0 = ~5529u;
    return Struct_1(vec3<u32>(firstLeadingBit(min(1u, 0u)) | global2.x, ~53667u, ~96087u), select(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-597f, 1579f)))).b, select(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-889f, 159f)))).b, !func_2(vec2<f32>(-2890f, -723f)).b, global1.a), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(3334u, 13u)], false, false)), vec3<bool>(global1.b, all(vec2<bool>(global1.a, global1.b)), !global4[_wgslsmith_index_u32(0u, 1u)]), vec3<bool>(global2.x != global2.x, global2.x >= u_input.a.x, true))), vec4<u32>(_wgslsmith_clamp_u32(~9130u, 11129u, 84778u), _wgslsmith_mod_u32(0u, 24368u), reverseBits(~15346u), (_wgslsmith_mod_u32(1u, 1u) << (~u_input.a.x % 32u)) << (~(~u_input.a.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!global1.a, global0[_wgslsmith_index_u32(~23896u, 13u)], global1.b, !any(select(select(vec4<bool>(global1.a, false, false, global1.b), vec4<bool>(true, true, global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(global2.x, 1u)]), true), !vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 13u)], true, false), true)));
    var var_1 = min(-min(max(-25405i, -20830i), 25986i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(43850i, -1i, -2147483647i), vec3<i32>(1i, 1i, 1i)), -1i);
    var var_2 = func_1();
    let var_3 = !(_wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(~44996i, min(594i, -38997i), _wgslsmith_dot_vec3_i32(vec3<i32>(-39336i, -12812i, 29140i), vec3<i32>(1i, 0i, 1214i)))) == (8983i << ((var_2.a.x ^ abs(56564u)) % 32u)));
    let var_4 = !vec4<bool>(global2.x >= 1u, func_1().b.x, any(!var_2.b.xz), true);
    let var_5 = false;
    var_2 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(657f, 580f), -2531f)))));
    let var_6 = 5356i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, firstLeadingBit(vec3<i32>(abs(1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(26674i, -23436i, var_6, var_6), vec4<i32>(-2147483647i, var_6, 1i, var_6)), 1i)), u_input.a);
}

