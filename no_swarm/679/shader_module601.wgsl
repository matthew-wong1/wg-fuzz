struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(Struct_2(-385f), vec3<u32>(77207u, 102035u, 35586u), Struct_4(Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec4<f32>(-479f, -1381f, -963f, -1790f), vec3<u32>(14942u, 5309u, 0u), vec2<bool>(false, true)), Struct_3(true)), -1144f), Struct_5(Struct_2(-122f), vec3<u32>(4294967295u, 51551u, 8448u), Struct_4(Struct_1(vec3<u32>(72591u, 1u, 1u), vec4<f32>(-656f, 427f, -214f, 501f), vec3<u32>(64542u, 4294967295u, 1u), vec2<bool>(true, false)), Struct_3(false)), -1273f), Struct_5(Struct_2(1510f), vec3<u32>(4294967295u, 1u, 1u), Struct_4(Struct_1(vec3<u32>(0u, 113389u, 28965u), vec4<f32>(-2286f, 1507f, 999f, -291f), vec3<u32>(17259u, 32601u, 5605u), vec2<bool>(true, false)), Struct_3(true)), -122f), Struct_5(Struct_2(-1000f), vec3<u32>(4294967295u, 61525u, 0u), Struct_4(Struct_1(vec3<u32>(4294967295u, 36321u, 1u), vec4<f32>(-524f, 357f, -1079f, -697f), vec3<u32>(1u, 4294967295u, 1u), vec2<bool>(true, false)), Struct_3(false)), -2805f), Struct_5(Struct_2(-1001f), vec3<u32>(44681u, 1u, 12311u), Struct_4(Struct_1(vec3<u32>(15718u, 4294967295u, 6894u), vec4<f32>(153f, 336f, 942f, -790f), vec3<u32>(4294967295u, 55815u, 53533u), vec2<bool>(true, false)), Struct_3(false)), -557f), Struct_5(Struct_2(1120f), vec3<u32>(0u, 4294967295u, 31028u), Struct_4(Struct_1(vec3<u32>(41949u, 4294967295u, 25508u), vec4<f32>(1573f, 551f, -1411f, 568f), vec3<u32>(18073u, 0u, 44809u), vec2<bool>(false, false)), Struct_3(true)), -1815f), Struct_5(Struct_2(209f), vec3<u32>(1u, 0u, 47836u), Struct_4(Struct_1(vec3<u32>(4294967295u, 30200u, 1u), vec4<f32>(-2162f, 216f, -425f, 990f), vec3<u32>(44921u, 1u, 11937u), vec2<bool>(false, false)), Struct_3(false)), 485f), Struct_5(Struct_2(-437f), vec3<u32>(0u, 1u, 1u), Struct_4(Struct_1(vec3<u32>(1u, 4294967295u, 1u), vec4<f32>(186f, 1000f, 1029f, -440f), vec3<u32>(1u, 93969u, 12652u), vec2<bool>(false, true)), Struct_3(false)), 1043f), Struct_5(Struct_2(-192f), vec3<u32>(4294967295u, 34u, 0u), Struct_4(Struct_1(vec3<u32>(0u, 55841u, 31651u), vec4<f32>(536f, -700f, -1011f, 503f), vec3<u32>(20145u, 7969u, 20780u), vec2<bool>(true, false)), Struct_3(false)), 332f), Struct_5(Struct_2(-112f), vec3<u32>(23638u, 24001u, 33179u), Struct_4(Struct_1(vec3<u32>(1u, 1u, 0u), vec4<f32>(-242f, 393f, 633f, 646f), vec3<u32>(35293u, 4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_3(false)), 509f), Struct_5(Struct_2(-954f), vec3<u32>(4294967295u, 83509u, 4035u), Struct_4(Struct_1(vec3<u32>(64462u, 1u, 0u), vec4<f32>(209f, -1357f, 291f, 111f), vec3<u32>(25237u, 1u, 0u), vec2<bool>(true, true)), Struct_3(true)), -188f), Struct_5(Struct_2(-368f), vec3<u32>(0u, 44804u, 0u), Struct_4(Struct_1(vec3<u32>(28515u, 8424u, 23745u), vec4<f32>(-494f, -291f, 419f, 363f), vec3<u32>(57887u, 81377u, 0u), vec2<bool>(false, true)), Struct_3(true)), 1482f), Struct_5(Struct_2(-311f), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_4(Struct_1(vec3<u32>(91806u, 4294967295u, 88004u), vec4<f32>(676f, 243f, 1000f, -748f), vec3<u32>(4294967295u, 136254u, 1u), vec2<bool>(true, true)), Struct_3(true)), 287f), Struct_5(Struct_2(1000f), vec3<u32>(1u, 26331u, 84480u), Struct_4(Struct_1(vec3<u32>(4294967295u, 0u, 11504u), vec4<f32>(1000f, -483f, -1210f, 1280f), vec3<u32>(58181u, 0u, 1u), vec2<bool>(true, true)), Struct_3(false)), 207f), Struct_5(Struct_2(3554f), vec3<u32>(0u, 4294967295u, 4294967295u), Struct_4(Struct_1(vec3<u32>(115u, 0u, 79447u), vec4<f32>(-1365f, 1067f, 226f, -277f), vec3<u32>(0u, 0u, 40809u), vec2<bool>(false, false)), Struct_3(true)), -336f), Struct_5(Struct_2(232f), vec3<u32>(19201u, 49843u, 55451u), Struct_4(Struct_1(vec3<u32>(32760u, 69239u, 17939u), vec4<f32>(-1000f, -1391f, 660f, -495f), vec3<u32>(32949u, 0u, 4294967295u), vec2<bool>(true, false)), Struct_3(false)), 1001f));

var<private> global2: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> Struct_2 {
    return Struct_2(-2269f);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_sub_u32(u_input.a, arg_2.x)) & u_input.a;
    global1 = array<Struct_5, 16>();
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(100386u, u_input.a, u_input.a), arg_2), 4294967295u), u_input.a) >> (~(~vec2<u32>(_wgslsmith_mod_u32(u_input.a, 28522u), 4294967295u)) % vec2<u32>(32u));
    var var_2 = 49408i;
    let var_3 = _wgslsmith_f_op_f32(select(-219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))), select(firstLeadingBit(u_input.b.x) > -2147483647i, !all(vec3<bool>(global2.x, global2.x, global2.x)), global2.x)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = Struct_1(arg_1.b & ~vec3<u32>(u_input.a, ~arg_1.b.x, _wgslsmith_mult_u32(4294967295u, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), 1570f, -508f, 750f), vec3<u32>(4294967295u, arg_1.c.a.a.x, ~1u), vec2<bool>(any(!select(vec4<bool>(global2.x, false, false, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(false, global2.x, false, false), vec4<bool>(global2.x, false, false, arg_0.a))), global0[_wgslsmith_index_u32(u_input.a, 26u)]));
    var_0 = arg_1.c.a;
    let var_1 = -704f;
    let var_2 = select(vec3<bool>(!select(any(vec2<bool>(arg_1.c.a.d.x, true)), select(true, false, false), !global2.x), 2147483647i <= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(40304i, u_input.b.x, 1i, 3727i), vec4<i32>(1i, u_input.b.x, u_input.b.x, 1i)), abs(u_input.b.x)), any(!select(vec3<bool>(arg_1.c.b.a, false, arg_0.a), vec3<bool>(true, true, global2.x), arg_0.a))), select(!(!vec3<bool>(global2.x, global0[_wgslsmith_index_u32(41829u, 26u)], global0[_wgslsmith_index_u32(arg_1.b.x, 26u)])), vec3<bool>(true, arg_1.c.b.a, (arg_1.c.a.d.x || true) | (arg_1.c.b.a || global0[_wgslsmith_index_u32(arg_1.b.x, 26u)])), true), !select(!vec3<bool>(arg_0.a, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_1.c.a.d.x, global0[_wgslsmith_index_u32(88910u, 26u)]), 0u > u_input.a), any(select(vec4<bool>(global2.x, true, false, arg_0.a), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_0.a, arg_1.c.b.a, arg_0.a), vec4<bool>(false, false, global0[_wgslsmith_index_u32(var_0.c.x, 26u)], var_0.d.x)))));
    let var_3 = _wgslsmith_mult_i32(-2147483647i, abs(1i >> (select(_wgslsmith_add_u32(1u, 186555u), ~var_0.a.x, true) % 32u)));
    return vec3<u32>(77461u, 29498u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), arg_1.c.a.a.xx)) ^ vec3<u32>(select(~(~arg_1.c.a.c.x), 26776u, true), ~0u, ~(~0u >> (1u % 32u)));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> vec3<bool> {
    global0 = array<bool, 26>();
    var var_0 = vec2<i32>(arg_1, arg_1);
    let var_1 = ~(~min(~vec4<u32>(18374u, 1u, 62598u, arg_0.b.x), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.b.x, 0u, u_input.a, 0u), abs(vec4<u32>(arg_0.b.x, 30280u, 7159u, 0u)), vec4<u32>(u_input.a, 0u, 34394u, arg_0.b.x))));
    var var_2 = Struct_3(any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], !arg_0.c.a.d.x, any(vec4<bool>(global2.x, global2.x, false, global2.x)))));
    var var_3 = !global2.x;
    return vec3<bool>(any(!global2.yx), global2.x, arg_0.c.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(Struct_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -282f), func_1(), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(47932u, u_input.a, u_input.a))), ~vec3<u32>(~u_input.a, ~24933u, max(u_input.a, u_input.a)), Struct_4(Struct_1(vec3<u32>(0u, u_input.a, 4294967295u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-264f, -128f, 1204f, 2503f))), func_3(Struct_3(global0[_wgslsmith_index_u32(1u, 26u)]), Struct_5(Struct_2(1167f), vec3<u32>(74170u, u_input.a, u_input.a), Struct_4(Struct_1(vec3<u32>(80965u, 1u, 33974u), vec4<f32>(535f, 1515f, 1000f, 547f), vec3<u32>(u_input.a, 94975u, 0u), global2.zy), Struct_3(global2.x)), 616f)), global2.zx), Struct_3(any(vec3<bool>(global2.x, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(759f, 1057f) * -1000f))), (-_wgslsmith_div_i32(-2147483647i, u_input.b.x) | -1i) & ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(69363u) | _wgslsmith_clamp_u32(u_input.a, ~4294967295u, u_input.a)), ~0u, func_1().a, 0u);
}

