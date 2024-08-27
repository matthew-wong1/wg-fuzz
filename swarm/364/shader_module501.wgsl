struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<f32>(1295f, -1041f, 1000f), vec4<u32>(0u, 4294967295u, 29200u, 1u), 4294967295u), Struct_1(vec3<f32>(1207f, 2865f, 966f), vec4<u32>(39940u, 1u, 37380u, 51798u), 17008u), Struct_1(vec3<f32>(1217f, -417f, -1218f), vec4<u32>(64519u, 0u, 1u, 0u), 4064u), Struct_1(vec3<f32>(-192f, -1120f, -419f), vec4<u32>(1u, 4294967295u, 5483u, 37543u), 4294967295u), Struct_1(vec3<f32>(118f, 1353f, 1000f), vec4<u32>(42856u, 1u, 51994u, 1u), 1u), Struct_1(vec3<f32>(130f, -1013f, -296f), vec4<u32>(14213u, 0u, 4294967295u, 4294967295u), 4294967295u), Struct_1(vec3<f32>(194f, 1991f, 650f), vec4<u32>(8355u, 1u, 6089u, 1u), 4294967295u), Struct_1(vec3<f32>(-199f, -519f, 1311f), vec4<u32>(39100u, 1u, 0u, 10020u), 4294967295u), Struct_1(vec3<f32>(-647f, 176f, -835f), vec4<u32>(1u, 55934u, 0u, 45299u), 4294967295u), Struct_1(vec3<f32>(-697f, 768f, -612f), vec4<u32>(1413u, 1u, 79840u, 0u), 45962u), Struct_1(vec3<f32>(896f, 2043f, 886f), vec4<u32>(1u, 1245u, 0u, 3531u), 4294967295u), Struct_1(vec3<f32>(826f, -1705f, 399f), vec4<u32>(66186u, 4294967295u, 1u, 17512u), 4294967295u), Struct_1(vec3<f32>(658f, 1009f, -833f), vec4<u32>(0u, 1u, 16512u, 53485u), 18383u), Struct_1(vec3<f32>(-1000f, -2206f, -314f), vec4<u32>(0u, 42984u, 4294967295u, 0u), 33467u), Struct_1(vec3<f32>(1146f, 216f, -715f), vec4<u32>(0u, 4294967295u, 17320u, 0u), 38066u), Struct_1(vec3<f32>(-177f, 495f, -638f), vec4<u32>(22854u, 4294967295u, 1u, 84454u), 1u), Struct_1(vec3<f32>(-1024f, -742f, -263f), vec4<u32>(14189u, 25618u, 0u, 0u), 1u), Struct_1(vec3<f32>(1000f, -126f, 2325f), vec4<u32>(36326u, 4294967295u, 5682u, 1u), 1u), Struct_1(vec3<f32>(226f, -1000f, 387f), vec4<u32>(0u, 84309u, 56020u, 1u), 4294967295u), Struct_1(vec3<f32>(146f, -238f, -212f), vec4<u32>(1u, 54006u, 0u, 18520u), 4294967295u));

var<private> global2: vec4<bool>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<f32>(-1943f, -1000f, -1048f), vec4<u32>(62253u, 4294967295u, 31278u, 28468u), 1u), Struct_1(vec3<f32>(-2355f, 1319f, -1987f), vec4<u32>(18771u, 0u, 0u, 70857u), 27590u), Struct_1(vec3<f32>(-1069f, -939f, 288f), vec4<u32>(20020u, 4294967295u, 21831u, 4294967295u), 32624u), Struct_1(vec3<f32>(932f, 721f, 1295f), vec4<u32>(53650u, 4294967295u, 1u, 19067u), 4294967295u), Struct_1(vec3<f32>(335f, 179f, -165f), vec4<u32>(0u, 0u, 13801u, 1u), 22323u), Struct_1(vec3<f32>(-1198f, -549f, -675f), vec4<u32>(0u, 52257u, 39904u, 24306u), 4294967295u), Struct_1(vec3<f32>(306f, -287f, 1786f), vec4<u32>(0u, 0u, 0u, 1u), 24837u), Struct_1(vec3<f32>(1305f, 544f, 1078f), vec4<u32>(4294967295u, 6409u, 2972u, 0u), 19252u), Struct_1(vec3<f32>(790f, 946f, 977f), vec4<u32>(5997u, 19821u, 43168u, 107742u), 86596u), Struct_1(vec3<f32>(634f, 634f, -824f), vec4<u32>(9705u, 0u, 10963u, 1u), 35854u), Struct_1(vec3<f32>(1084f, 1334f, 808f), vec4<u32>(58798u, 4294967295u, 40977u, 40749u), 17894u), Struct_1(vec3<f32>(-326f, -1063f, -1384f), vec4<u32>(1u, 0u, 1u, 49764u), 55521u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> vec2<u32> {
    global4 = array<Struct_1, 12>();
    let var_0 = Struct_2(u_input.b, arg_3.b, arg_3.a, arg_3.d);
    global0 = array<vec2<i32>, 30>();
    global0 = array<vec2<i32>, 30>();
    let var_1 = select(!global2.yxy, global2.zwy, false);
    return var_0.b;
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    global3 = Struct_2(firstLeadingBit(_wgslsmith_mod_u32(1u, global3.a)), select(vec2<u32>(_wgslsmith_mult_u32(countOneBits(1u), 4294967295u), 24873u), countOneBits(~func_3(vec4<i32>(-34957i, u_input.c, 47127i, u_input.c), global3.d.zx, global2.x, Struct_2(global3.b.x, vec2<u32>(global3.b.x, 59071u), 110814u, global3.d))), select(select(select(vec2<bool>(global2.x, true), vec2<bool>(true, false), true), select(vec2<bool>(false, global2.x), global2.zw, true), select(global2.wz, vec2<bool>(global2.x, true), global2.yw)), !vec2<bool>(global2.x, global2.x), global2.xx)), ~_wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(36449u, u_input.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.d.x))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1218f, -539f), _wgslsmith_f_op_f32(1000f + -226f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(global3.d.x - -362f)), -941f), _wgslsmith_f_op_vec4_f32(global3.d - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d))))));
    let var_0 = Struct_3(4294967295u == u_input.b);
    global1 = array<Struct_1, 20>();
    let var_1 = global3.d.x;
    return vec4<bool>(global2.x, true, true, false);
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_2(u_input.b, ~global3.b, ~firstTrailingBit(1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global3.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.d - global3.d)), !global2.x))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 20u)];
    global2 = select(vec4<bool>(any(vec4<bool>(any(vec2<bool>(global2.x, true)), false, global2.x, any(vec4<bool>(true, true, false, global2.x)))), !(22102i == u_input.c), !(!(!global2.x)), true & (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(0u, var_0.c)) <= 0u)), !(!select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(true, global2.x, false, false), func_2(vec4<i32>(u_input.c, 1i, u_input.a, 5239i)))), vec4<bool>(1i != _wgslsmith_mult_i32(~u_input.c, -u_input.c), !(_wgslsmith_mod_u32(var_1.c, var_0.b.x) < abs(7042u)), global2.x, any(select(!vec4<bool>(global2.x, global2.x, false, true), select(vec4<bool>(false, global2.x, true, true), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, false, global2.x, global2.x)), func_2(vec4<i32>(u_input.a, u_input.a, -2147483647i, -6979i))))));
    let var_2 = Struct_2(~22681u, ~(~global3.b), ~(~reverseBits(u_input.b) ^ var_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, _wgslsmith_div_f32(-866f, _wgslsmith_f_op_f32(-var_0.d.x)), global3.d.x, -732f), _wgslsmith_f_op_vec4_f32(step(global3.d, vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_1.a.x, var_0.d.x, _wgslsmith_f_op_f32(global3.d.x + 597f))))));
    var var_3 = var_0;
    return global2.zz;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = Struct_3(true);
    let var_1 = Struct_3(any(vec3<bool>(!any(arg_2), global2.x, _wgslsmith_add_i32(0i, 1i) < arg_1)));
    global4 = array<Struct_1, 12>();
    global0 = array<vec2<i32>, 30>();
    let var_2 = vec3<i32>(u_input.c, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1 >> (1u % 32u), arg_1 << (global3.b.x % 32u), u_input.c), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(-35130i, 2147483647i, -72299i)))) >> (4294967295u % 32u));
    return _wgslsmith_sub_vec2_u32(min(vec2<u32>(_wgslsmith_div_u32(~u_input.b, 28630u), u_input.b), ~global3.b), ~(vec2<u32>(select(global3.b.x, global3.b.x, var_1.a), max(37194u, u_input.b)) << (~min(global3.b, vec2<u32>(global3.c, 0u)) % vec2<u32>(32u))));
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = reverseBits(-(~max(-vec3<i32>(23114i, -20774i, u_input.c), ~vec3<i32>(2147483647i, 14209i, -31189i))));
    global4 = array<Struct_1, 12>();
    var var_1 = Struct_3(~(33390u | arg_0) != arg_2.c);
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.d.x - global3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -548f))), arg_2.d.x) * var_2.d.x));
    return Struct_1(vec3<f32>(1371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x - arg_2.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + global3.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * global3.d.x) * _wgslsmith_f_op_f32(-arg_2.d.x))))), vec4<u32>(arg_2.a, arg_0, ~1u, func_4(global2.yz, u_input.a, func_2(max(vec4<i32>(-16297i, var_0.x, var_0.x, -39120i), vec4<i32>(33397i, var_0.x, -22481i, u_input.c)))).x), arg_1.x << (~_wgslsmith_mod_u32(~18552u, _wgslsmith_mod_u32(0u, arg_0)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!(!global2.xw))), select(global2.yy, select(!global2.yx, vec2<bool>(any(global2.wxx), !global2.x), global2.yz), vec2<bool>(any(select(global2.zy, global2.xw, true)), !global2.x)), vec2<bool>(false, true));
    let var_1 = func_5(max(_wgslsmith_dot_vec2_u32(~(~global3.b), ~(~vec2<u32>(u_input.b, 0u))), _wgslsmith_sub_u32(~24821u, u_input.b & 30954u) >> (_wgslsmith_add_u32(0u >> (u_input.b % 32u), ~18336u) % 32u)), func_4(!func_1(), i32(-1i) * -62007i, select(vec4<bool>(global2.x, global2.x, false, var_0.x), func_2(vec4<i32>(u_input.a, 1i, -43673i, 19589i)), global2.x)) ^ global3.b, Struct_2(u_input.b, vec2<u32>(~(~global3.b.x), ~1u), global3.c, vec4<f32>(-583f, -948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2545f))), 593f)));
    var var_2 = u_input.c;
    let var_3 = var_1.a;
    var var_4 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-758f * -1517f), _wgslsmith_div_f32(var_1.a.x, -517f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, global3.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(func_5(global3.c, vec2<u32>(global3.b.x, 0u), Struct_2(0u, vec2<u32>(var_1.c, 99891u), global3.a, global3.d)).a.zz))), vec2<bool>(any(!vec3<bool>(true, var_0.x, true)), any(select(vec3<bool>(true, var_0.x, global2.x), global2.yzw, vec3<bool>(var_0.x, true, false)))))), abs(_wgslsmith_div_vec3_u32(var_1.b.xxx, select(~var_1.b.zxz, ~vec3<u32>(var_1.c, u_input.b, global3.a), true))), global0[_wgslsmith_index_u32(func_5(max(~(~1u), 22143u), ~(var_1.b.zz & ~vec2<u32>(3445u, 2835u)), Struct_2(0u, ~(~vec2<u32>(1u, var_1.b.x)), ~(~1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, var_1.a.x, -1000f, global3.d.x) - vec4<f32>(128f, global3.d.x, -1000f, 871f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -1036f, -2060f, -391f))))).c, 30u)], _wgslsmith_f_op_f32(-global3.d.x));
}

