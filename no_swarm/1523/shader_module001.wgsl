struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(464f, -221f, -1000f), vec3<f32>(-1167f, -413f, 1000f), vec3<f32>(767f, 1251f, 215f), vec3<f32>(1334f, 114f, 975f), vec3<f32>(1523f, 523f, -147f), vec3<f32>(1090f, 689f, 532f), vec3<f32>(-1634f, 623f, 755f), vec3<f32>(-167f, -1750f, 136f), vec3<f32>(-2498f, -976f, -1055f), vec3<f32>(390f, -863f, -395f));

var<private> global2: Struct_1;

var<private> global3: array<vec4<i32>, 3>;

var<private> global4: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1399f, 177f)))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1419f * -191f), -1000f)))));
    var var_3 = var_1;
    global0 = array<Struct_1, 18>();
    return true;
}

fn func_2() -> u32 {
    global3 = array<vec4<i32>, 3>();
    let var_0 = Struct_1(global2.a ^ global2.a, global2.b, -18069i, func_3(reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a.x, u_input.a, global2.a.x, u_input.a), vec4<u32>(global2.a.x, global2.a.x, u_input.a, global2.a.x)), firstTrailingBit(vec4<u32>(1u, u_input.a, 1u, global2.a.x)))), ~global2.b.x, Struct_1(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(global2.a, global2.a)), countOneBits(_wgslsmith_clamp_vec2_i32(global2.e, global2.b, global2.e)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(39807u, 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)]), 52848i), all(vec3<bool>(global2.d, global2.d, global2.d)), global2.e)), global2.e);
    var var_1 = global0[_wgslsmith_index_u32(~global2.a.x, 18u)];
    var var_2 = Struct_1(global2.a >> (_wgslsmith_div_vec2_u32(var_0.a, countOneBits(reverseBits(global2.a))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-var_1.e.x, var_0.b.x << (var_0.a.x % 32u))), ~var_1.e & ~vec2<i32>(1i, -17820i)), _wgslsmith_dot_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -2147483647i, global2.c), vec3<i32>(46226i, 0i, -22047i)) >> (vec3<u32>(4294967295u, 1827u, 4294967295u) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.e.x, var_1.e.x, var_1.b.x), ~vec3<i32>(-1i, global2.c, global2.c)), -vec3<i32>(var_0.c, _wgslsmith_sub_i32(var_1.c, var_1.b.x), _wgslsmith_clamp_i32(var_0.b.x, 20342i, 15576i))), false | !global2.d, abs(var_1.e | reverseBits(-var_0.b)));
    global3 = array<vec4<i32>, 3>();
    return var_0.a.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = global2.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(arg_1.a.x, 10u)]));
    global0 = array<Struct_1, 18>();
    global4 = _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.x, ~abs(0u), _wgslsmith_mult_u32(~u_input.a, _wgslsmith_mult_u32(arg_1.a.x, 4739u)), ~(4294967295u ^ arg_1.a.x)), vec4<u32>(global2.a.x, ~1u, func_2(), func_2()));
    var var_2 = vec4<i32>(1i, global2.e.x | global2.b.x, _wgslsmith_add_i32(arg_1.b.x, -1i), global2.b.x);
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_u32(global2.a, reverseBits(global2.a)), vec2<i32>(1i, 1i), global2.e.x, global2.d, global2.e);
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(635f + -696f) * -1205f))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-329f - 1304f))))), !arg_0.d, arg_0.d, 21262i > var_1.c);
    global0 = array<Struct_1, 18>();
    var var_3 = ~select(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.b.x, 2147483647i), global2.e, vec2<i32>(~(-39557i), countOneBits(13365i))), var_1.e, false);
    return func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1361f, -261f)))))))), var_1, vec2<f32>(_wgslsmith_f_op_f32(-1552f * _wgslsmith_f_op_f32(select(-577f, _wgslsmith_f_op_f32(min(-156f, -421f)), global2.d))), _wgslsmith_f_op_f32(f32(-1f) * -103f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global2.a.x, 18u)];
    global3 = array<vec4<i32>, 3>();
    let var_1 = 0i;
    var var_2 = func_4(func_1(-185f, global0[_wgslsmith_index_u32(4294967295u, 18u)], vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2578f, 1704f)) - _wgslsmith_f_op_f32(535f - 1264f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2018f - -1042f), _wgslsmith_f_op_f32(round(-958f)), global2.d)))));
    global1 = array<vec3<f32>, 10>();
    let var_3 = Struct_1(var_0.a, ~(-var_0.e), var_1, !(!any(vec2<bool>(true, true))) || ((func_1(2259f, Struct_1(var_2.a, vec2<i32>(var_0.c, var_1), -14886i, var_0.d, vec2<i32>(var_1, 11813i)), vec2<f32>(-174f, -1000f)).d | (var_0.a.x == 37061u)) && var_2.d), vec2<i32>(i32(-1i) * -func_4(global0[_wgslsmith_index_u32(global2.a.x, 18u)]).b.x, max(global2.b.x, abs(firstTrailingBit(16847i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-479f, -910f, -644f, 2492f), vec4<f32>(525f, 242f, -1580f, 276f))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-605f, 253f, 146f, 250f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(840f, _wgslsmith_f_op_f32(min(-811f, 562f)), 585f, _wgslsmith_f_op_f32(1224f * 1474f)) - vec4<f32>(_wgslsmith_f_op_f32(-944f + -771f), -409f, _wgslsmith_f_op_f32(-232f + -1264f), 605f))), -1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(267f, _wgslsmith_f_op_f32(-2382f - _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(159f, -1653f)) + _wgslsmith_f_op_f32(trunc(-121f)))) * _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a), 10u)] * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(var_2.a.x, 10u)] * global1[_wgslsmith_index_u32(4294967295u, 10u)]))))), global2.e, var_2.b.x);
}

