struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 20012u);

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<f32>(268f, -481f)), false, vec3<i32>(-42942i, -1i, -1i), -17870i), Struct_2(Struct_1(vec2<f32>(573f, -515f)), false, vec3<i32>(0i, -35462i, 8702i), 0i), Struct_2(Struct_1(vec2<f32>(-886f, -213f)), true, vec3<i32>(-54624i, i32(-2147483648), -23604i), 1i), Struct_2(Struct_1(vec2<f32>(-2275f, 1028f)), false, vec3<i32>(12947i, -34353i, 0i), 79759i), Struct_2(Struct_1(vec2<f32>(-703f, 1244f)), false, vec3<i32>(48809i, -1i, 0i), 9212i), Struct_2(Struct_1(vec2<f32>(-1000f, -571f)), true, vec3<i32>(-30802i, -1i, -24228i), i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(243f, 350f)), true, vec3<i32>(-39051i, -1i, -26645i), -10588i), Struct_2(Struct_1(vec2<f32>(2243f, 357f)), false, vec3<i32>(1i, i32(-2147483648), 1758i), i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(1000f, 1076f)), false, vec3<i32>(-10723i, -14653i, 2147483647i), 0i), Struct_2(Struct_1(vec2<f32>(856f, 1000f)), false, vec3<i32>(2147483647i, -9889i, 2147483647i), 21160i), Struct_2(Struct_1(vec2<f32>(-642f, -712f)), true, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 2147483647i));

var<private> global2: array<Struct_4, 17>;

var<private> global3: vec4<f32>;

var<private> global4: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    global0 = firstTrailingBit(vec2<u32>(~_wgslsmith_sub_u32(arg_1 >> (15144u % 32u), global0.x), global0.x));
    global2 = array<Struct_4, 17>();
    let var_0 = -(~(-(~vec3<i32>(48534i, 30702i, 34738i))) << (min(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0.x, 26501u), vec3<u32>(0u, u_input.a, global0.x)), vec3<u32>(28840u, 38213u, 0u)), vec3<u32>(~arg_1, _wgslsmith_add_u32(u_input.a, 4294967295u), global0.x)) % vec3<u32>(32u)));
    let var_1 = any(select(arg_0.wy, select(arg_0.yw, vec2<bool>(false, false), arg_0.zy), arg_0.x));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-342f, global3.x, _wgslsmith_f_op_f32(abs(1202f)), global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, 536f, 1343f, global3.x)))))) + vec4<f32>(-910f, global3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - _wgslsmith_f_op_f32(-global3.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2626f + _wgslsmith_f_op_f32(-global3.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    global4 = arg_1.a;
    let var_0 = arg_1;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b))) - -1746f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), 1354f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1076f))), _wgslsmith_f_op_f32(f32(-1f) * -505f), -623f, global3.x), vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, false), global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f + 143f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -112f), var_0.a, any(vec4<bool>(true, false, true, true))))), _wgslsmith_sub_u32(u_input.a, arg_1.c) != (min(var_0.c, 1u) << (4294967295u % 32u)))));
    global3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-122f)))), -839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f - -1055f))), _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - var_0.b))), any(vec3<bool>(true, true, true)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global3.xwx);
    return global0.x;
}

fn func_1() -> Struct_3 {
    var var_0 = ~vec3<u32>(~(~u_input.a), ~(u_input.a >> (9001u % 32u)), countOneBits(48390u)) << (~(vec3<u32>(0u, 0u, func_2(vec2<i32>(-1i, 1i), Struct_4(810f, global3.x, u_input.a, vec3<u32>(52453u, global0.x, 1u)))) >> (abs(vec3<u32>(4294967295u, 64622u, global0.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(abs(~_wgslsmith_mult_u32(~var_0.x, 1u))), 17u)];
    let var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-187f - var_1.a), _wgslsmith_f_op_f32(-var_1.a)))), any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, true), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)))), reverseBits(min(-vec3<i32>(2147483647i, 2943i, 2147483647i), reverseBits(vec3<i32>(0i, -1i, -11951i))) | vec3<i32>(_wgslsmith_mod_i32(0i, -45254i), -32554i, _wgslsmith_clamp_i32(-2147483647i, -13983i, 3507i))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(min(vec3<i32>(-21579i, -33691i, 1i), abs(vec3<i32>(2147483647i, 1i, -57702i))), ~vec3<i32>(1i, 1i, 1i)), vec3<i32>(~(~4812i), (i32(-1i) * -2147483647i) << (0u % 32u), -20401i)));
    let var_3 = var_2.d;
    let var_4 = min(firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 92833u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 21153u), vec3<u32>(84315u, 23187u, var_1.c))), vec3<u32>(~u_input.a, ~u_input.a, ~var_1.d.x), ~select(var_1.d, var_1.d, var_2.b))), vec3<u32>(4294967295u, _wgslsmith_mod_u32(global0.x, 21675u << ((var_0.x & u_input.a) % 32u)), _wgslsmith_clamp_u32(var_1.c, countOneBits(1u), ~u_input.a)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zz + vec2<f32>(382f, global3.x))))), 1u, Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.a.a.x)), var_1.b)), !all(!vec2<bool>(true, var_2.b)), -(~(~vec3<i32>(-2147483647i, var_3, var_2.d))), -min(abs(var_2.d), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(var_0.c.a, var_0.c.b, _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(var_0.c.c.x, var_0.c.c.x), countOneBits(countOneBits(var_0.c.c.x)), _wgslsmith_dot_vec3_i32(var_0.c.c ^ var_0.c.c, var_0.c.c)), vec3<i32>(~0i, _wgslsmith_sub_i32(var_0.c.c.x, var_0.c.c.x), 0i) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, 0u), vec4<u32>(global0.x, 27685u, u_input.a, 4294967295u)), ~4294967295u, var_0.b) % vec3<u32>(32u))), -_wgslsmith_clamp_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.d, 1i, -1i, var_0.c.d), -vec4<i32>(2147483647i, -2147483647i, -17545i, var_0.c.d)), _wgslsmith_mult_i32(abs(2147483647i), abs(var_0.c.d))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-177f - var_1.a.a.x)), _wgslsmith_f_op_f32(-var_1.a.a.x))) - _wgslsmith_f_op_f32(ceil(202f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.c.a.a.x) - -1000f) * var_0.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(var_0.c.a.a.x - -364f));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1227f, var_1.a.a.x, 920f, var_1.a.a.x)))))));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(1u | u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.a.a * global3.ww)), vec2<f32>(_wgslsmith_f_op_f32(min(-220f, var_0.a.x)), _wgslsmith_f_op_f32(select(var_0.a.x, -1689f, false))), select(true, var_0.b != var_2.b, true)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.a.a.x, -1250f, var_2.c.a.a.x, global3.x)))))), _wgslsmith_mult_vec3_u32(~max(vec3<u32>(20439u, 4294967295u, var_2.b), vec3<u32>(u_input.a, var_2.b, global0.x)), firstTrailingBit(vec3<u32>(var_2.b, global0.x, u_input.a))) | vec3<u32>(select(_wgslsmith_mod_u32(80358u, 56089u), 1u, var_2.b > 50964u), ~(~6005u), u_input.a));
}

