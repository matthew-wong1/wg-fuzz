struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec2<f32>, 12>;

var<private> global2: array<Struct_1, 9>;

var<private> global3: array<f32, 16>;

var<private> global4: Struct_2 = Struct_2(Struct_1(44514u, vec2<bool>(true, false), false, vec2<bool>(true, false), vec4<f32>(-1000f, 252f, 1000f, 1027f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(select(select(!select(vec3<bool>(global0.c.a.c, global4.a.c, global4.a.b.x), vec3<bool>(global4.a.d.x, true, true), vec3<bool>(global4.a.d.x, global4.a.d.x, false)), !vec3<bool>(global0.c.a.c, false, false), !select(vec3<bool>(true, false, global0.c.a.d.x), vec3<bool>(true, global0.c.a.b.x, global0.c.a.c), vec3<bool>(global0.c.a.b.x, global0.c.a.b.x, global4.a.b.x))), !(!vec3<bool>(global4.a.b.x, global0.c.a.d.x, global0.c.a.c)), global4.a.d.x), select(select(!select(vec3<bool>(true, true, global0.c.a.c), vec3<bool>(global0.c.a.d.x, global4.a.c, global4.a.b.x), vec3<bool>(true, true, global0.c.a.c)), vec3<bool>(!global0.c.a.b.x, true, all(vec3<bool>(true, false, global4.a.d.x))), true), select(vec3<bool>(global4.a.c, global0.c.a.b.x, true), select(vec3<bool>(false, true, false), vec3<bool>(true, global4.a.b.x, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, global0.c.a.d.x), vec3<bool>(global4.a.c, false, global4.a.c), global0.c.a.c), vec3<bool>(global0.c.a.b.x, global0.c.a.c, global0.c.a.c), select(vec3<bool>(global4.a.b.x, global4.a.d.x, global0.c.a.c), vec3<bool>(global4.a.b.x, false, true), false))), vec3<bool>(true, any(!global4.a.d), any(select(global4.a.d, global0.c.a.b, global0.c.a.b.x)))), vec3<bool>(all(vec4<bool>(27674u < global4.a.a, select(false, global0.c.a.c, false), !global4.a.d.x, true)), true, false));
    return ~select(vec4<u32>(~global4.a.a << (_wgslsmith_div_u32(global0.c.a.a, 33838u) % 32u), u_input.e.x, 1u, 1u), vec4<u32>(61516u, global4.a.a << (u_input.e.x % 32u), countOneBits(~global0.b), global0.a), true);
}

fn func_2() -> u32 {
    global4 = global0.c;
    global3 = array<f32, 16>();
    var var_0 = Struct_4(global0.c, select(!vec3<bool>(true, !global0.c.a.d.x, select(true, global0.c.a.c, global4.a.c)), select(vec3<bool>(false, global0.c.a.d.x, all(vec2<bool>(false, global0.c.a.b.x))), vec3<bool>(true, global4.a.d.x, any(vec2<bool>(global4.a.d.x, global4.a.c))), !select(vec3<bool>(global4.a.c, false, global0.c.a.d.x), vec3<bool>(global4.a.b.x, global0.c.a.c, global0.c.a.d.x), vec3<bool>(true, true, false))), vec3<bool>(false, true, false)), Struct_3(func_3(), 1000f));
    var var_1 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~func_3(), reverseBits(var_0.c.a)), ~min(~var_0.c.a, ~var_0.c.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f + var_0.a.a.e.x) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global4.a.a, 16u)] * 898f))))));
    let var_2 = Struct_1(abs(global4.a.a), global4.a.d, !(!(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global0.b, 16u)])) == _wgslsmith_div_f32(var_0.c.b, var_1.b))), global0.c.a.d, vec4<f32>(global4.a.e.x, -1316f, -1267f, -2835f));
    return select(_wgslsmith_mod_u32(_wgslsmith_div_u32(42849u, min(_wgslsmith_add_u32(40771u, var_2.a), global4.a.a ^ global0.a)), global4.a.a), firstTrailingBit(reverseBits(var_2.a)), global0.c.a.b.x);
}

fn func_1() -> Struct_4 {
    let var_0 = global2[_wgslsmith_index_u32(0u, 9u)];
    let var_1 = vec4<u32>(~_wgslsmith_mod_u32(~global4.a.a, ~firstLeadingBit(1u)), var_0.a, _wgslsmith_dot_vec3_u32(~(u_input.a << (vec3<u32>(global4.a.a, global0.b, 4294967295u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~u_input.e, ~vec3<u32>(4294967295u, var_0.a, 13808u))) >> (_wgslsmith_mult_u32(1u, 1459u) % 32u), u_input.a.x);
    global2 = array<Struct_1, 9>();
    let var_2 = vec4<i32>(global0.d.x, 2147483647i, select(abs(-7269i), u_input.b, all(select(vec3<bool>(var_0.b.x, true, global0.c.a.c), vec3<bool>(true, global4.a.d.x, false), global4.a.c))), 1i) << (vec4<u32>(1u, 17529u, func_2(), 11958u) % vec4<u32>(32u));
    let var_3 = max(var_2.xzz, var_2.yxy);
    return Struct_4(Struct_2(Struct_1(select(firstLeadingBit(1u), ~21138u, var_0.b.x), !select(global4.a.d, vec2<bool>(false, global0.c.a.c), global4.a.b), 750f == global0.c.a.e.x, var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global4.a.e.x, 1139f, var_0.e.x)))), !select(!select(vec3<bool>(true, false, true), vec3<bool>(false, global0.c.a.c, var_0.d.x), vec3<bool>(global0.c.a.c, true, true)), select(vec3<bool>(false, global0.c.a.b.x, global0.c.a.b.x), select(vec3<bool>(var_0.c, global4.a.c, true), vec3<bool>(global4.a.d.x, var_0.d.x, false), vec3<bool>(global0.c.a.d.x, global0.c.a.b.x, global0.c.a.c)), true), !vec3<bool>(global0.c.a.b.x, true, false)), Struct_3(abs(var_1), -545f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x ^ 42340u, var_0.a.a.a, func_2(), ~6984u), _wgslsmith_sub_vec4_u32(min(vec4<u32>(1u, u_input.a.x, 1u, 25228u), vec4<u32>(global4.a.a, 51432u, var_0.a.a.a, global4.a.a)), _wgslsmith_mult_vec4_u32(var_0.c.a, vec4<u32>(0u, var_0.c.a.x, 81717u, 5042u)))), ~_wgslsmith_sub_u32(0u, func_3().x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(max(var_0.c.a, vec4<u32>(u_input.e.x, 1u, 4294967295u, u_input.a.x)), vec4<u32>(var_0.c.a.x, 2205u, u_input.e.x, var_0.a.a.a)), _wgslsmith_mod_u32(firstLeadingBit(6490u), global4.a.a), _wgslsmith_clamp_u32(select(63787u, 108151u, false), ~u_input.e.x, _wgslsmith_add_u32(4294967295u, 0u)))), abs(var_0.c.a) << (select(vec4<u32>(var_0.c.a.x, 56628u ^ u_input.a.x, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.a.a, global0.a, var_0.c.a.x, u_input.a.x), var_0.c.a), global4.a.c) % vec4<u32>(32u)));
    var var_2 = func_1().a.a;
    let var_3 = func_1().a.a;
    global2 = array<Struct_1, 9>();
    let var_4 = i32(-1i) * -(global0.d.x | _wgslsmith_add_i32(~(-2147483647i), global0.d.x));
    let var_5 = min(-vec4<i32>(u_input.c.x & -2147483647i, var_4, u_input.d, abs(select(global0.d.x, 2147483647i, var_3.c))), vec4<i32>(-_wgslsmith_mult_i32(global0.d.x | u_input.b, 1i), 34590i, -3971i, global0.d.x));
    let var_6 = Struct_5(~(1u | _wgslsmith_dot_vec2_u32(var_1.wy, var_0.c.a.xx)), firstTrailingBit(~var_0.a.a.a), Struct_2(global2[_wgslsmith_index_u32(func_1().a.a.a, 9u)]), vec3<i32>(global0.d.x, _wgslsmith_add_i32(-1i, -1i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_4, -1i, var_4, var_5.x)) ^ (var_5 >> (vec4<u32>(2840u, var_3.a, 113922u, 63114u) % vec4<u32>(32u))), var_5)));
    var var_7 = any(select(!select(select(vec4<bool>(true, true, true, global0.c.a.c), vec4<bool>(global4.a.d.x, global4.a.d.x, global0.c.a.b.x, var_3.d.x), true), select(vec4<bool>(true, global0.c.a.b.x, false, var_2.c), vec4<bool>(true, var_2.d.x, false, global0.c.a.d.x), vec4<bool>(false, true, var_3.c, false)), true || var_3.b.x), select(vec4<bool>(all(var_0.b), true, true & global4.a.d.x, global4.a.c), !select(vec4<bool>(global0.c.a.b.x, global4.a.b.x, false, var_6.c.a.b.x), vec4<bool>(var_2.d.x, false, true, true), true), false), var_3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.a.e.yy, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-(~global0.d.yy), abs(vec2<i32>(var_4, var_4) >> (var_0.c.a.ww % vec2<u32>(32u)))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-85657i, 0i), -vec2<i32>(var_5.x, -26764i), min(var_6.d.zz, vec2<i32>(var_5.x, 62356i))), min(vec2<i32>(_wgslsmith_clamp_i32(9932i, 27728i, u_input.d), 1i), firstTrailingBit(global0.d.yx))), _wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(firstTrailingBit(var_0.c.a.x), _wgslsmith_mod_u32(func_3().x, 1u), var_2.a)), var_0.c.a);
}

