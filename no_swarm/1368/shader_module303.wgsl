struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(786f, 1244f, -1784f));

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(-117f, vec2<u32>(4294967295u, 0u), 1000f)), Struct_2(Struct_1(555f, vec2<u32>(4294967295u, 83360u), -291f)), Struct_2(Struct_1(1194f, vec2<u32>(1u, 75902u), 1106f)), Struct_2(Struct_1(898f, vec2<u32>(68906u, 19140u), 667f)), Struct_2(Struct_1(-1000f, vec2<u32>(5423u, 1u), -1209f)), Struct_2(Struct_1(-470f, vec2<u32>(3025u, 33262u), -631f)), Struct_2(Struct_1(-1092f, vec2<u32>(4294967295u, 0u), 548f)), Struct_2(Struct_1(672f, vec2<u32>(1u, 4294967295u), 1150f)), Struct_2(Struct_1(-1000f, vec2<u32>(1u, 1u), 778f)), Struct_2(Struct_1(-1178f, vec2<u32>(4294967295u, 1u), 1893f)), Struct_2(Struct_1(791f, vec2<u32>(39114u, 56532u), 422f)), Struct_2(Struct_1(1253f, vec2<u32>(55407u, 4099u), -700f)), Struct_2(Struct_1(-2132f, vec2<u32>(36545u, 0u), 505f)), Struct_2(Struct_1(-1132f, vec2<u32>(10724u, 84977u), -535f)), Struct_2(Struct_1(-414f, vec2<u32>(10042u, 4294967295u), 895f)), Struct_2(Struct_1(425f, vec2<u32>(27238u, 1u), 682f)), Struct_2(Struct_1(2555f, vec2<u32>(14801u, 4294967295u), -1604f)), Struct_2(Struct_1(-1000f, vec2<u32>(2746u, 59301u), 1397f)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_1(-392f, vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(13094u, 0u, 86452u), 1u), 63859u), arg_0.x);
    global1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a, global1.a.x))), var_1.a, _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(-var_1.c)))));
    let var_2 = ~(-vec4<i32>(16692i, u_input.a.x, -11611i, ~(-21893i)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))) + 583f), (~(~var_1.b) >> (abs(~vec2<u32>(0u, 46707u)) % vec2<u32>(32u))) ^ vec2<u32>(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 2779u, 0u), vec3<u32>(var_1.b.x, 32993u, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 1u, var_1.b.x), vec3<u32>(50063u, var_1.b.x, var_1.b.x)) | 1u), _wgslsmith_f_op_f32(round(-1109f)));
    return 34688u;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> f32 {
    global2 = array<Struct_2, 18>();
    let var_0 = arg_2.a.b.x;
    global0 = array<bool, 1>();
    let var_1 = u_input.a;
    var var_2 = false;
    return 1469f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1647f * 707f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f * 596f)), _wgslsmith_f_op_f32(func_4(1223f, global0[_wgslsmith_index_u32(func_3(vec4<f32>(global1.a.x, -154f, global1.a.x, 895f)), 1u)], Struct_2(Struct_1(-724f, vec2<u32>(30338u, 27451u), -788f)), firstTrailingBit(7727u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(301f, global1.a.x, global1.a.x, 1170f), vec4<f32>(global1.a.x, -161f, global1.a.x, 872f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-327f, 371f, global1.a.x, -1297f))))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), min(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), _wgslsmith_f_op_f32(trunc(var_0.x))));
    var var_2 = 1i;
    let var_3 = Struct_3(global1.a);
    var_2 = ~u_input.a.x;
    return Struct_3(global1.a);
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2();
    global0 = array<bool, 1>();
    var var_1 = abs(_wgslsmith_add_vec4_i32(abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-16609i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), ~(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x)) << (~vec4<u32>(41004u, 1u, 24977u, 15572u) % vec4<u32>(32u)))));
    let var_2 = vec3<u32>(~65088u, _wgslsmith_sub_u32(firstTrailingBit(0u), _wgslsmith_mod_u32(465u, 1u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 31633u)), ~reverseBits(~vec2<u32>(19539u, 4294967295u))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.x, 146f)), vec3<f32>(_wgslsmith_f_op_f32(global1.a.x + var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x))));
    return !select(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true))), select(vec2<bool>(all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_2.x, 1u)])), false), vec2<bool>(var_0.a.x >= 2229f, false), false), any(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 1u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)]))));
}

fn func_5(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = select(abs(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<i32>(-2147483647i, -1i, 0i))) | vec3<i32>(u_input.a.x, -_wgslsmith_mod_i32(-11904i, u_input.a.x), -u_input.a.x), countOneBits(select(countOneBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), (vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) & vec3<i32>(10354i, u_input.a.x, -47553i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -11464i), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), select(select(vec3<bool>(arg_0.x, false, false), vec3<bool>(true, true, arg_0.x), global0[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(arg_0.x, false, true), vec3<bool>(global0[_wgslsmith_index_u32(2518u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], true)))), vec3<bool>(false, true, (_wgslsmith_sub_i32(u_input.a.x, -10765i) | firstLeadingBit(u_input.a.x)) == (i32(-1i) * -u_input.a.x)));
    return Struct_3(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!select(func_1(), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)])), !any(vec2<bool>(false, false))));
    var var_1 = any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(~34001u)), 1u)], any(select(vec3<bool>(true, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(102805u, 1u)]), true)) | true, true));
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_2 = u_input.a.x;
    var var_3 = firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, abs(_wgslsmith_mod_i32(~(-15421i), ~var_2))));
    var var_4 = _wgslsmith_f_op_vec2_f32(-global1.a.zz);
    global2 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, abs(~min(1u, 4294967295u))), ~11695u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-572f, -566f)) * _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-810f * 117f))))));
}

