struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<i32>(-8486i, -2595i, i32(-2147483648), -64619i), vec3<i32>(0i, 20876i, i32(-2147483648)), 0u, vec2<u32>(74151u, 1u)), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, 0i), vec3<i32>(23821i, 66270i, 47507i), 1u, vec2<u32>(0u, 0u)), Struct_1(vec4<i32>(-1i, 1i, 29628i, 2147483647i), vec3<i32>(-11832i, -46917i, -1i), 97151u, vec2<u32>(41275u, 54136u)), Struct_1(vec4<i32>(32557i, -5682i, 8745i, 0i), vec3<i32>(2147483647i, 1i, 8084i), 1u, vec2<u32>(1u, 79473u)), Struct_1(vec4<i32>(1i, -1i, 0i, -1i), vec3<i32>(i32(-2147483648), -21358i, -3149i), 84320u, vec2<u32>(26387u, 41869u)), Struct_1(vec4<i32>(1i, 1i, 22304i, 1i), vec3<i32>(45041i, -34494i, -1i), 1u, vec2<u32>(29721u, 3058u)), Struct_1(vec4<i32>(-1i, 18684i, 0i, 1i), vec3<i32>(17331i, -8009i, -19556i), 4294967295u, vec2<u32>(72858u, 48974u)), Struct_1(vec4<i32>(-15760i, -1i, 2759i, -28018i), vec3<i32>(2147483647i, 23358i, i32(-2147483648)), 0u, vec2<u32>(0u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), 24893i, 1i, i32(-2147483648)), vec3<i32>(54713i, -81855i, -16812i), 0u, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<i32>(12914i, 0i, i32(-2147483648), 16385i), vec3<i32>(0i, 29681i, 0i), 0u, vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(0i, 9251i, -17636i, 5606i), vec3<i32>(-15824i, 0i, -17052i), 4294967295u, vec2<u32>(65963u, 15522u)), Struct_1(vec4<i32>(0i, 24131i, 1i, -21062i), vec3<i32>(-33396i, 15228i, -21416i), 9116u, vec2<u32>(4294967295u, 1u)), Struct_1(vec4<i32>(-806i, i32(-2147483648), -1i, -1i), vec3<i32>(-48721i, -1534i, -30963i), 4294967295u, vec2<u32>(1u, 1u)), Struct_1(vec4<i32>(1i, 1i, 28339i, i32(-2147483648)), vec3<i32>(0i, 74286i, 31470i), 17891u, vec2<u32>(31801u, 36706u)), Struct_1(vec4<i32>(-16650i, 58623i, -37657i, 12330i), vec3<i32>(44003i, 19205i, 20654i), 1u, vec2<u32>(4294967295u, 27659u)), Struct_1(vec4<i32>(i32(-2147483648), -5473i, i32(-2147483648), 13617i), vec3<i32>(i32(-2147483648), 2260i, i32(-2147483648)), 24496u, vec2<u32>(75406u, 1865u)), Struct_1(vec4<i32>(-1i, -1i, -1i, -42437i), vec3<i32>(1i, -1i, i32(-2147483648)), 37695u, vec2<u32>(42008u, 1u)), Struct_1(vec4<i32>(0i, 35210i, 59937i, 2147483647i), vec3<i32>(i32(-2147483648), 44319i, 0i), 31254u, vec2<u32>(4294967295u, 7815u)), Struct_1(vec4<i32>(19010i, 22451i, -1i, 1i), vec3<i32>(31021i, 2147483647i, -1i), 26578u, vec2<u32>(1u, 73699u)));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<i32>(-25886i, 12884i, -1i, -1i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), 51026u, vec2<u32>(38893u, 4294967295u)), Struct_1(vec4<i32>(1i, 0i, 3237i, 9612i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), 0u, vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(0i, 2147483647i, 2147483647i, 10362i), vec3<i32>(-1i, 17576i, 67820i), 4294967295u, vec2<u32>(35437u, 0u)), Struct_1(vec4<i32>(-1i, -2662i, 23841i, i32(-2147483648)), vec3<i32>(-2023i, -51314i, 2147483647i), 31717u, vec2<u32>(18320u, 1u)), Struct_1(vec4<i32>(37118i, i32(-2147483648), -36705i, -1i), vec3<i32>(-5862i, -61i, 0i), 1u, vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(i32(-2147483648), 4151i, 50013i, 2147483647i), vec3<i32>(17i, i32(-2147483648), -37428i), 4294967295u, vec2<u32>(1u, 0u)), Struct_1(vec4<i32>(-1i, 2147483647i, -7010i, 0i), vec3<i32>(-29406i, 1i, -1i), 0u, vec2<u32>(53959u, 4830u)), Struct_1(vec4<i32>(2147483647i, 36964i, 0i, -40288i), vec3<i32>(-1i, 11800i, 52356i), 4294967295u, vec2<u32>(4294967295u, 4294967295u)));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> vec2<u32> {
    let var_0 = select(select(!vec3<bool>(arg_0, false, true), vec3<bool>(all(vec4<bool>(false, true, true, arg_0)), any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, false, false))), true), arg_0), select(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(!arg_0, any(vec2<bool>(true, arg_0)), 4294967295u < u_input.b.x), (true || arg_0) & select(arg_0, false, false)), vec3<bool>(select(u_input.a <= u_input.a, arg_0 != true, false), false, false), !vec3<bool>(arg_0, true, arg_0 && arg_0)), vec3<bool>(!(!(!arg_0)), _wgslsmith_clamp_i32(-u_input.d.x, -4213i, _wgslsmith_sub_i32(u_input.a, 12068i)) < ~(~1i), any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, true, false), true)))));
    var var_1 = vec4<u32>(u_input.b.x, u_input.e.x, u_input.b.x, u_input.c);
    global0 = all(vec2<bool>(true, true));
    global2 = array<Struct_1, 8>();
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(select(u_input.a, 2147483647i, false)), u_input.a), u_input.d));
    return u_input.b;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> vec2<u32> {
    global2 = array<Struct_1, 8>();
    var var_0 = Struct_1(-vec4<i32>(_wgslsmith_add_i32(u_input.d.x, 47189i), 30336i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, 2147483647i, arg_1), vec4<i32>(arg_0, 1i, arg_1, -27757i)), u_input.a), -43059i), abs(vec3<i32>(reverseBits(u_input.d.x), _wgslsmith_mult_i32(arg_0, u_input.d.x), 10273i | u_input.d.x) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, u_input.a, -2147483647i) & vec3<i32>(-1i, -19568i, u_input.a), vec3<i32>(-14057i, 14211i, arg_0) >> (u_input.e % vec3<u32>(32u)))), u_input.c, ~func_3(true, vec2<f32>(454f, -1481f)));
    global0 = true;
    return ~vec2<u32>(_wgslsmith_mod_u32(abs(4294967295u), arg_2), ~35496u) & (u_input.b | (vec2<u32>(var_0.d.x, countOneBits(arg_2)) & vec2<u32>(firstTrailingBit(0u), arg_2 | 52629u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(486f + -203f) - 1787f))), -364f)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1765f))));
    global2 = array<Struct_1, 8>();
    global1 = array<Struct_1, 19>();
    var var_0 = abs(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(reverseBits(0u), 82250u), _wgslsmith_div_u32(~52413u, 2516u)), 0u, 0u, 1u));
    var_0 = vec4<u32>(_wgslsmith_add_u32(12514u, arg_1.c), 0u, arg_1.c, (_wgslsmith_dot_vec2_u32(~arg_3.d, func_2(0i, arg_3.a.x, 47596u)) >> (~(~0u) % 32u)) ^ _wgslsmith_div_u32(min(firstTrailingBit(69303u), 1u << (arg_3.d.x % 32u)), _wgslsmith_clamp_u32(abs(u_input.e.x), abs(var_0.x), 0u)));
    return (vec2<u32>(1u, 2739u) & var_0.ww) << (~firstLeadingBit(u_input.b) % vec2<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = arg_3;
    global1 = array<Struct_1, 19>();
    let var_2 = Struct_1(arg_3.a, min(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, arg_0.b.x), max(35870i, 2147483647i), -arg_3.a.x), _wgslsmith_sub_vec3_i32(arg_0.b, -arg_0.b)), vec3<i32>(1i, _wgslsmith_sub_i32(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-43790i, -22165i, var_0.a.x, 0i), vec4<i32>(var_0.b.x, var_0.b.x, var_1.a.x, 11060i))), u_input.a)), 1u, _wgslsmith_mult_vec2_u32(firstTrailingBit(arg_3.d), arg_0.d));
    var_1 = Struct_1(-firstLeadingBit(countOneBits(firstLeadingBit(vec4<i32>(var_1.b.x, -1i, -1i, var_0.b.x)))), _wgslsmith_div_vec3_i32(var_1.a.yzx, ~select(-var_1.a.yyw, arg_3.a.wwz, arg_1.yzx)), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(var_1.c | var_0.d.x), 0u, 0u, var_0.c), vec4<u32>(~min(arg_0.d.x, arg_3.c), ~88888u, 4294967295u, 38501u)), ~(~(arg_3.d | vec2<u32>(14625u, var_2.d.x))) & max(vec2<u32>(4294967295u, 0u), abs(arg_3.d ^ vec2<u32>(u_input.e.x, 833u))));
    return vec3<f32>(_wgslsmith_f_op_f32(726f * 1809f), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + -1248f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x | u_input.a, -22487i, u_input.d.x, -21529i), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.d.x, -7706i, u_input.a), vec4<i32>(u_input.d.x, u_input.a, u_input.a, 22104i)), vec4<i32>(u_input.d.x, -1i, u_input.a, u_input.d.x))), vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-14865i, u_input.a)), u_input.d)), firstTrailingBit(12102u), _wgslsmith_mod_vec2_u32(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(13247i, u_input.d.x, u_input.a, u_input.d.x), vec4<i32>(-2147483647i, -39961i, u_input.d.x, u_input.d.x)), Struct_1(vec4<i32>(24460i, 2147483647i, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.d.x, -43626i), u_input.b.x, u_input.e.yz), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, u_input.d.x), vec3<i32>(u_input.a, u_input.d.x, -1i), 24816u, vec2<u32>(u_input.b.x, u_input.b.x))), u_input.e.yz)), !vec4<bool>(true, !all(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, 429f, -2433f)), vec3<f32>(388f, 455f, 1184f), true)))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstLeadingBit(u_input.b.x), ~55505u & func_2(u_input.d.x, u_input.a, u_input.e.x).x), 19u)]));
    global1 = array<Struct_1, 19>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), 1229f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, var_0.x <= 429f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1058f, var_0.x)), _wgslsmith_f_op_vec3_f32(-var_0), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-828f, var_0.x, var_0.x)), all(vec3<bool>(false, false, true)))))), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-36584i, -1i) | vec2<i32>(u_input.d.x, 67528i), _wgslsmith_sub_vec2_i32(u_input.d, vec2<i32>(u_input.a, u_input.d.x)))));
}

