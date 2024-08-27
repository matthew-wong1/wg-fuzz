struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(false, Struct_3(Struct_1(vec4<u32>(14068u, 10259u, 49768u, 1u), 2166i), vec3<i32>(0i, 2147483647i, 56633i)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 24330u, 60482u), i32(-2147483648)), vec3<i32>(-1i, 39068i, 17767i)), vec2<i32>(16406i, -60782i)), Struct_5(false, Struct_3(Struct_1(vec4<u32>(11330u, 50235u, 4294967295u, 17325u), i32(-2147483648)), vec3<i32>(-74388i, -13702i, 13661i)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 65988u, 17554u), 2147483647i), vec3<i32>(0i, -5793i, -1i)), vec2<i32>(12121i, 1i)), Struct_5(true, Struct_3(Struct_1(vec4<u32>(13943u, 50804u, 32351u, 8559u), 1i), vec3<i32>(0i, -23565i, i32(-2147483648))), Struct_3(Struct_1(vec4<u32>(45127u, 4294967295u, 4294967295u, 53576u), 2147483647i), vec3<i32>(46077i, 37897i, 2147483647i)), vec2<i32>(0i, -1714i)), Struct_5(false, Struct_3(Struct_1(vec4<u32>(32244u, 4294967295u, 4294967295u, 0u), 10595i), vec3<i32>(i32(-2147483648), 2147483647i, -56439i)), Struct_3(Struct_1(vec4<u32>(34100u, 1u, 4294967295u, 6569u), i32(-2147483648)), vec3<i32>(9348i, -3622i, i32(-2147483648))), vec2<i32>(-4760i, i32(-2147483648))), Struct_5(true, Struct_3(Struct_1(vec4<u32>(23817u, 127396u, 52750u, 29808u), 33777i), vec3<i32>(23673i, 1i, -13164i)), Struct_3(Struct_1(vec4<u32>(413u, 0u, 4294967295u, 0u), 1i), vec3<i32>(-1i, 1i, -9579i)), vec2<i32>(-2414i, 1i)), Struct_5(false, Struct_3(Struct_1(vec4<u32>(4294967295u, 8850u, 83512u, 1u), 0i), vec3<i32>(2147483647i, 51360i, 1i)), Struct_3(Struct_1(vec4<u32>(27600u, 8852u, 0u, 4294967295u), -1i), vec3<i32>(-750i, 0i, 26675i)), vec2<i32>(2147483647i, -35003i)));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_1(vec4<u32>(1u, 0u, 5149u, 0u), 4591i), vec3<i32>(i32(-2147483648), -11814i, 2147483647i)), Struct_3(Struct_1(vec4<u32>(1u, 4294967295u, 24796u, 0u), 0i), vec3<i32>(26822i, i32(-2147483648), -36556i)), Struct_3(Struct_1(vec4<u32>(7689u, 5728u, 82059u, 0u), -18598i), vec3<i32>(0i, 78618i, -21326i)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 35459u, 4294967295u), 41059i), vec3<i32>(i32(-2147483648), 2147483647i, -36541i)), Struct_3(Struct_1(vec4<u32>(33029u, 0u, 4294967295u, 12356u), 30752i), vec3<i32>(-12616i, i32(-2147483648), -38121i)), Struct_3(Struct_1(vec4<u32>(53757u, 1u, 4294967295u, 4394u), i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 28670i)), Struct_3(Struct_1(vec4<u32>(0u, 16071u, 28667u, 0u), 0i), vec3<i32>(i32(-2147483648), 23626i, 22277i)), Struct_3(Struct_1(vec4<u32>(105833u, 0u, 0u, 0u), 2147483647i), vec3<i32>(-11232i, 0i, 2147483647i)), Struct_3(Struct_1(vec4<u32>(18389u, 1u, 0u, 0u), 1i), vec3<i32>(0i, -1i, 1i)), Struct_3(Struct_1(vec4<u32>(45876u, 29926u, 63653u, 4294967295u), -7027i), vec3<i32>(0i, 1i, -1i)), Struct_3(Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), -6086i), vec3<i32>(-44488i, 15356i, -1i)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 33183u, 0u), -34833i), vec3<i32>(39245i, 61800i, -14611i)), Struct_3(Struct_1(vec4<u32>(39626u, 0u, 0u, 4294967295u), -1i), vec3<i32>(-17087i, -40652i, -22197i)));

var<private> global2: f32 = -1822f;

var<private> global3: bool;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(44498u, 4294967295u, 0u, 4294967295u), 290i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    let var_0 = Struct_2(_wgslsmith_mult_i32(global4.b, _wgslsmith_sub_i32(global4.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), abs(u_input.b)))), Struct_1(global4.a, reverseBits(abs(arg_1))), Struct_1(global4.a, countOneBits(-2147483647i)));
    global4 = var_0.b;
    global3 = arg_0;
    global0 = array<Struct_5, 6>();
    let var_1 = var_0;
    return any(vec2<bool>(arg_0, all(!vec4<bool>(true, arg_0, arg_0, arg_0)))) | !(!arg_0);
}

fn func_3() -> bool {
    var var_0 = Struct_3(Struct_1(global4.a, 5338i), -reverseBits(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(26246i, u_input.b.x, 18537i), vec3<i32>(-1i, global4.b, global4.b)))));
    var var_1 = Struct_2(2147483647i, Struct_1(abs(_wgslsmith_add_vec4_u32(min(vec4<u32>(global4.a.x, var_0.a.a.x, 1u, 66218u), vec4<u32>(0u, u_input.c.x, global4.a.x, u_input.c.x)), abs(var_0.a.a))), global4.b), var_0.a);
    let var_2 = -var_0.b;
    return (true | all(vec2<bool>(true, true))) && !(~(~33673u) >= _wgslsmith_div_u32(firstLeadingBit(global4.a.x), 4294967295u));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = func_3();
    var var_1 = min(vec4<u32>(1u, 12358u, _wgslsmith_add_u32(41089u, arg_0 & 77216u), global4.a.x), global4.a >> (vec4<u32>(min(global4.a.x, 4294967295u), 1u, ~u_input.a.x, arg_0) % vec4<u32>(32u))) & abs(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(global4.a.x, 35789u), global4.a.x), _wgslsmith_dot_vec4_u32(~global4.a, max(vec4<u32>(u_input.a.x, global4.a.x, arg_0, 77643u), vec4<u32>(arg_0, 23338u, arg_0, 4294967295u))), ~countOneBits(u_input.a.x), ~19276u));
    global3 = arg_2.x;
    let var_2 = Struct_5(true, global1[_wgslsmith_index_u32(max(arg_0, ~var_1.x), 13u)], Struct_3(Struct_1(abs(vec4<u32>(14137u, u_input.c.x, arg_0, u_input.a.x)), u_input.b.x), ~firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b, global4.b, -4863i), vec3<i32>(-1i, 7077i, -2147483647i), vec3<i32>(global4.b, global4.b, -255i)))), vec2<i32>(_wgslsmith_mult_i32(abs(u_input.b.x), abs(39426i) ^ -global4.b), _wgslsmith_mod_i32(-5963i, -1i)));
    var var_3 = Struct_2(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(global4.b, 2147483647i, 1i, var_2.d.x), -vec4<i32>(var_2.b.b.x, 2147483647i, var_2.b.b.x, u_input.b.x)) >> (vec4<u32>(global4.a.x, ~0u, firstLeadingBit(global4.a.x), 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -1i, 1i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global4.b, -4570i, 1i) ^ vec4<i32>(-2147483647i, global4.b, 37373i, -17141i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, u_input.b.x, -55176i), vec4<i32>(global4.b, 86477i, var_2.d.x, 20053i))))), Struct_1(firstLeadingBit(max(~vec4<u32>(4294967295u, 0u, 47803u, var_1.x), vec4<u32>(0u, u_input.c.x, u_input.a.x, 6439u))), 0i), Struct_1(~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, var_2.b.a.a.x, 39898u, 4294967295u), global4.a, global4.a), vec4<u32>(var_2.b.a.a.x, 7924u, 0u, arg_0)), 24212i));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f * -668f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-777f)) - _wgslsmith_f_op_f32(f32(-1f) * -651f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-707f * -732f), 1014f)), -572f, -861f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(460f * -325f), _wgslsmith_f_op_f32(ceil(-2487f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(473f + 803f))), 967f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(249f + -1000f), _wgslsmith_f_op_f32(max(1999f, 1320f))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-875f)))), 343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -895f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 171f, false)) + _wgslsmith_f_op_f32(f32(-1f) * -1163f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b.x;
    var var_1 = max(firstTrailingBit(20713u), 4294967295u);
    var var_2 = _wgslsmith_f_op_vec4_f32(func_2(~u_input.c.x, true, vec3<bool>((true & all(vec2<bool>(false, true))) | true, true, !func_1(true, u_input.b.x) || true)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(320f)));
    var var_4 = _wgslsmith_f_op_f32(max(848f, _wgslsmith_f_op_f32(-var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(-15737i));
}

