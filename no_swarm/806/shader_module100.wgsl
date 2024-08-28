struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: vec4<f32> = vec4<f32>(1754f, -409f, -1147f, 1000f);

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(0u, vec4<i32>(-34037i, -1i, -9511i, 15497i)), Struct_3(0u, vec4<i32>(-26636i, i32(-2147483648), i32(-2147483648), -10220i)), Struct_3(71769u, vec4<i32>(2147483647i, -29426i, -1i, i32(-2147483648))), Struct_3(110646u, vec4<i32>(2147483647i, 1i, 2147483647i, i32(-2147483648))), Struct_3(31849u, vec4<i32>(i32(-2147483648), -16684i, i32(-2147483648), -5077i)), Struct_3(4131u, vec4<i32>(13255i, 4525i, -1i, -15619i)), Struct_3(0u, vec4<i32>(1i, -32223i, 10853i, 0i)), Struct_3(4077u, vec4<i32>(1i, 2147483647i, 2147483647i, -3892i)), Struct_3(24374u, vec4<i32>(i32(-2147483648), -1i, 0i, 0i)), Struct_3(30484u, vec4<i32>(75682i, i32(-2147483648), 43509i, 0i)), Struct_3(17421u, vec4<i32>(22810i, -20268i, 2147483647i, 32812i)), Struct_3(29627u, vec4<i32>(i32(-2147483648), 25896i, 0i, 2147483647i)), Struct_3(1u, vec4<i32>(-1i, -2385i, 2147483647i, 1i)), Struct_3(0u, vec4<i32>(-1i, -2018i, -5080i, -79712i)), Struct_3(4294967295u, vec4<i32>(1i, -39937i, 0i, -5063i)), Struct_3(18117u, vec4<i32>(1i, -1i, -1i, 26685i)), Struct_3(1u, vec4<i32>(-1i, 44860i, -25862i, 1i)), Struct_3(23038u, vec4<i32>(2147483647i, 56308i, 2147483647i, 2128i)), Struct_3(4294967295u, vec4<i32>(-24549i, 29022i, i32(-2147483648), -48121i)), Struct_3(10931u, vec4<i32>(-83204i, 0i, -1i, -384i)), Struct_3(100718u, vec4<i32>(0i, 465i, 1i, 0i)), Struct_3(56237u, vec4<i32>(-17345i, -27747i, i32(-2147483648), 1i)), Struct_3(0u, vec4<i32>(i32(-2147483648), 3289i, -26763i, 19026i)), Struct_3(35846u, vec4<i32>(2147483647i, 1i, 1i, 15809i)), Struct_3(0u, vec4<i32>(1i, -1i, 3988i, -4794i)), Struct_3(4294967295u, vec4<i32>(i32(-2147483648), 22581i, 0i, -1i)), Struct_3(37994u, vec4<i32>(25870i, 1i, i32(-2147483648), -53867i)), Struct_3(4294967295u, vec4<i32>(-4043i, -14955i, 50021i, 1i)), Struct_3(4294967295u, vec4<i32>(37298i, i32(-2147483648), 0i, -43563i)), Struct_3(7528u, vec4<i32>(-13083i, i32(-2147483648), 20096i, 58213i)), Struct_3(34414u, vec4<i32>(i32(-2147483648), 1i, -6550i, -29318i)), Struct_3(4294967295u, vec4<i32>(-2589i, 448i, 16256i, 39i)));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    let var_0 = false;
    var var_1 = Struct_2(Struct_1(u_input.c.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 960f) + global2.wz) * global2.yx)), -1377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), select(vec2<bool>(all(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, true, var_0, false))), true), !select(!vec2<bool>(var_0, true), vec2<bool>(true, true), all(vec2<bool>(false, true))), vec2<bool>(var_0, true)));
    global1 = array<vec2<i32>, 10>();
    let var_2 = 1f;
    let var_3 = !select(select(vec3<bool>(select(var_1.b.x, var_0, var_0), var_1.b.x, var_0), vec3<bool>(true, !var_0, true), false), vec3<bool>(true, select(var_1.b.x, true, any(vec2<bool>(true, false))), true), var_0);
    return select(u_input.d.x, max(arg_1.a, 1u), any(!select(vec3<bool>(true, var_3.x, true), var_3, true)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = u_input.c.x;
    var var_1 = vec2<u32>(~49714u, func_3((~vec3<u32>(u_input.d.x, u_input.d.x, 40044u) | ~vec3<u32>(11533u, 0u, 33381u)) << (~(vec3<u32>(87687u, u_input.d.x, 27074u) | vec3<u32>(u_input.b, 41700u, u_input.b)) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(~u_input.d.x, 32u)]));
    var var_2 = Struct_3(var_1.x, -abs(abs(abs(vec4<i32>(22086i, 0i, u_input.a, arg_1.a.a.x)))));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global2.x)))))))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~arg_1.a.a.x, ~40536i, arg_1.a.a.x), u_input.a), arg_1.a.a.x) & (reverseBits(~u_input.c.x >> (~u_input.d.x % 32u)) | 2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1069f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.e)), global2.x)))));
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global3 = array<Struct_3, 32>();
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(countOneBits(global1[_wgslsmith_index_u32(25545u, 10u)]), firstTrailingBit(arg_0.b.zx))), ~vec2<i32>(arg_0.b.x, -20671i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.zw)))), _wgslsmith_f_op_f32(-903f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(false, Struct_2(Struct_1(arg_0.b.wx, vec2<f32>(global2.x, global2.x), global2.x, 806f, 224f), vec2<bool>(true, false))))))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    let var_1 = global2.ywz;
    let var_2 = 57719i;
    global0 = var_1.x;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec3_i32(~abs(vec3<i32>(0i, select(-1i, u_input.a, false), _wgslsmith_clamp_i32(-753i, arg_1.x, 31739i))), arg_2.zzw);
    let var_1 = ~min(vec4<i32>(0i, ~_wgslsmith_mod_i32(arg_1.x, var_0.x), -(~arg_0.a.x), ~(-u_input.a)), u_input.c >> (~min(vec4<u32>(arg_3.x, arg_3.x, u_input.d.x, 0u), vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 4294967295u)) % vec4<u32>(32u)));
    let var_2 = global3[_wgslsmith_index_u32(abs(arg_3.x & _wgslsmith_mult_u32(1u, 1u)), 32u)];
    global1 = array<vec2<i32>, 10>();
    global3 = array<Struct_3, 32>();
    return select(select(vec4<bool>(true, true, _wgslsmith_f_op_f32(arg_0.e + arg_0.e) >= _wgslsmith_f_op_f32(167f + 246f), true), select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)), arg_0.a.x >= arg_2.x), vec4<bool>(true, true, true, true)), vec4<bool>((~21286i >= ~var_2.b.x) && false, _wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(floor(1283f)), false, true), !vec4<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), all(vec2<bool>(false, true)), true && (u_input.d.x < arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    let var_0 = func_4(func_1(Struct_3(u_input.d.x, ~_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(-9237i, 13990i, 26910i, 2147483647i), u_input.c))), u_input.c.zy, _wgslsmith_div_vec4_i32(abs(-u_input.c), u_input.c), vec3<u32>(u_input.d.x, min(127498u | u_input.d.x, ~55826u), ~13730u) >> (abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u) ^ vec3<u32>(u_input.b, u_input.d.x, u_input.b), max(vec3<u32>(u_input.d.x, 1u, 41833u), vec3<u32>(1u, 1u, 41695u)))) % vec3<u32>(32u)));
    var var_1 = u_input.c.x;
    var var_2 = ~vec3<u32>(4294967295u, 0u, ~u_input.b);
    var var_3 = vec4<f32>(global2.x, global2.x, 987f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x + var_3.x))) - global2.x) - global2.x), global2.x, true));
    var var_4 = var_0.zw;
    var var_5 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~select(u_input.c.zy, global1[_wgslsmith_index_u32(var_2.x >> (95724u % 32u), 10u)], true), vec2<i32>(u_input.c.x, u_input.c.x)), func_1(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(68104u, var_2.x)), u_input.d.x), 32u)]).a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1106f * 859f))))));
}

