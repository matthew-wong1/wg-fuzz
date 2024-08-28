struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec4<f32>(-1000f, -245f, -118f, -1725f), vec4<f32>(-1107f, -606f, -2882f, 1041f), true);

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1i, -52866i), vec2<i32>(-6247i, 2147483647i), vec2<i32>(50098i, i32(-2147483648)), vec2<i32>(-5398i, -22494i), vec2<i32>(10897i, 0i), vec2<i32>(0i, -1i), vec2<i32>(0i, 24190i), vec2<i32>(1i, 29715i));

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<u32>, 16>;

var<private> global4: array<Struct_3, 25>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<i32>) -> bool {
    global4 = array<Struct_3, 25>();
    global4 = array<Struct_3, 25>();
    let var_0 = select(vec3<bool>(true, !(3751i <= arg_2.x) && all(vec3<bool>(arg_1, true, arg_0)), true), !vec3<bool>(true, true, _wgslsmith_div_f32(global2.x, global2.x) >= _wgslsmith_f_op_f32(-global0.c.x)), !(!vec3<bool>(!arg_0, !global0.d, any(vec3<bool>(false, false, true)))));
    var var_1 = 2147483647i;
    return !(_wgslsmith_mult_i32(arg_2.x, 1i) <= arg_2.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = select(!(!vec4<bool>(true, false, any(vec2<bool>(global0.d, false)), global0.d)), vec4<bool>(any(!select(vec3<bool>(global0.d, global0.d, false), vec3<bool>(true, global0.d, global0.d), false)), !any(vec4<bool>(global0.d, false, true, global0.d)), global0.d, any(select(vec2<bool>(global0.d, global0.d), vec2<bool>(true, global0.d), !global0.d))), vec4<bool>(global0.d, global0.a <= u_input.a.x, true, !(!func_3(false, global0.d, vec4<i32>(-1i, -2147483647i, 2147483647i, -2696i)))));
    global3 = array<vec3<u32>, 16>();
    let var_2 = global0.a;
    var var_3 = Struct_1(~_wgslsmith_clamp_u32(u_input.a.x, global0.a, (u_input.a.x >> (global0.a % 32u)) << (~global0.a % 32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-238f, _wgslsmith_f_op_f32(-539f * _wgslsmith_f_op_f32(-875f * var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(ceil(849f)))), _wgslsmith_f_op_vec4_f32(global0.b - global0.c), all(var_1.ww));
    return Struct_1(firstLeadingBit(min(~_wgslsmith_clamp_u32(var_3.a, 0u, 0u), global0.a ^ global0.a)), global0.b, _wgslsmith_f_op_vec4_f32(-global0.c), select(!(var_1.x | var_1.x), func_3(select(true, func_3(var_3.d, true, vec4<i32>(-2090i, -4646i, -19108i, 29473i)), false), !(true || var_1.x), vec4<i32>(1i, 1i, 1i, 1i)), func_3(var_0 > -781f, var_3.d, _wgslsmith_mod_vec4_i32(vec4<i32>(12674i, -1i, -11622i, 14646i) << (vec4<u32>(1u, 1u, u_input.a.x, 1u) % vec4<u32>(32u)), vec4<i32>(29171i, -1i, -2147483647i, 2147483647i)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    global1 = array<vec2<i32>, 8>();
    global0 = func_2(-800f);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(1416f * global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.c.x);
    let var_1 = global4[_wgslsmith_index_u32(firstTrailingBit(arg_0.a) >> (countOneBits(arg_0.a) % 32u), 25u)];
    var var_2 = _wgslsmith_f_op_f32(step(global0.b.x, global2.x));
    return global0.d;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(select(~global3[_wgslsmith_index_u32(u_input.a.x, 16u)], firstTrailingBit(vec3<u32>(14220u, arg_0.x, u_input.a.x)), false), vec3<u32>(~0u, ~2401u, abs(u_input.a.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, global0.a), abs(vec2<u32>(u_input.a.x, 0u))) & vec2<u32>(func_2(720f).a, 4294967295u ^ global0.a), _wgslsmith_mult_vec2_u32(~arg_0.yy, u_input.a.zy)), ~_wgslsmith_sub_u32(global0.a, arg_0.x), ~1u);
    global2 = _wgslsmith_f_op_vec3_f32(global0.b.xxz - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 289f, 1000f) * global0.c.wyy) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-537f, 556f, -1064f) * vec3<f32>(global0.b.x, global0.c.x, 1255f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, -367f, global2.x)))) - vec3<f32>(global0.c.x, -1038f, global0.c.x))));
    let var_1 = select(min(vec3<i32>(1i, -arg_2.x, _wgslsmith_mult_i32(arg_2.x ^ arg_2.x, -1i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.x, -12081i, arg_2.x), vec3<i32>(61260i, arg_2.x, arg_2.x), vec3<i32>(-10183i, arg_2.x, arg_2.x)) | vec3<i32>(abs(arg_2.x), firstTrailingBit(arg_2.x), 1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(29195i, arg_2.x, 1i)), -vec3<i32>(arg_2.x, arg_2.x, arg_2.x) >> (global3[_wgslsmith_index_u32(~1u, 16u)] % vec3<u32>(32u))), firstLeadingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -2147483647i), vec3<i32>(-23267i, -9755i, 47758i), vec3<i32>(44257i, arg_2.x, 2147483647i)))), 733f >= _wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1377f + global2.x))));
    var var_2 = ~(~arg_0.x);
    let var_3 = _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 1u);
    return Struct_2(~1u, var_1, _wgslsmith_mult_vec4_i32(~firstTrailingBit(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -47814i)), vec4<i32>(-1i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, arg_2.x), vec2<i32>(var_1.x, arg_2.x)), arg_2.x, _wgslsmith_sub_i32(abs(var_1.x), -78355i), ~(~arg_2.x))), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1266f, -1316f, 107f))))), global0.c, firstTrailingBit(~global0.a) == (~arg_0.x >> ((var_3 | 19225u) % 32u))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-46748i, min(abs(54949i), 42908i), 2147483647i), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-3139i, 2147483647i, 71520i), reverseBits(vec3<i32>(841i, 17526i, -5872i))), _wgslsmith_mod_vec3_i32(vec3<i32>(28230i, 9371i, 8361i), vec3<i32>(-1i, -18436i, 1i)), min(vec3<i32>(4595i, 39962i, -1i) >> (vec3<u32>(7292u, global0.a, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -19227i, -1i), vec3<i32>(18626i, 1i, -1i))))) & -reverseBits(-(-8353i << (u_input.a.x % 32u)));
    let var_1 = func_4(vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u) & _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~61121u), 14554u, 1u, ~23807u), !(!vec3<bool>(func_1(Struct_1(1u, global0.c, global0.b, false), 1i), global0.d, global0.a < 38008u)), vec2<i32>(_wgslsmith_sub_i32((i32(-1i) * -16653i) >> (_wgslsmith_mult_u32(0u, 17246u) % 32u), _wgslsmith_mult_i32(i32(-1i) * -35983i, i32(-1i) * -8106i)), 1i));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.b.x, -348f, -699f)) + vec3<f32>(global2.x, 555f, _wgslsmith_f_op_f32(-var_1.d.b.x))) * _wgslsmith_f_op_vec3_f32(select(var_1.d.b.yzz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.yyw), _wgslsmith_div_vec3_f32(var_1.d.b.yyz, vec3<f32>(-2053f, 2340f, -809f))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0.d, false)))))));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.d.c.xww)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_vec3_i32(-var_1.b, var_1.c.zwx, ~var_1.b)) & _wgslsmith_add_vec3_i32(var_1.c.zxz, select(vec3<i32>(var_1.c.x, -2147483647i, var_1.c.x), var_1.b ^ var_1.b, select(vec3<bool>(var_1.e, false, true), vec3<bool>(global0.d, false, global0.d), vec3<bool>(global0.d, var_1.e, false)))), min(1u, ~(~(~global0.a))), global0.c, var_1.c.zyy);
}

