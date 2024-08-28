struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<i32>(13468i, 11452i, -1i)), Struct_2(vec3<i32>(-2218i, 2147483647i, -21728i)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 6990i)), Struct_2(vec3<i32>(-11072i, -1i, -34146i)), Struct_2(vec3<i32>(8605i, 0i, -1i)), Struct_2(vec3<i32>(1i, -50371i, 1i)), Struct_2(vec3<i32>(-4844i, 2147483647i, 1i)), Struct_2(vec3<i32>(2147483647i, -1i, 2147483647i)), Struct_2(vec3<i32>(-18335i, -1i, -55558i)), Struct_2(vec3<i32>(-20384i, -32735i, 2147483647i)), Struct_2(vec3<i32>(40497i, 26423i, -6349i)), Struct_2(vec3<i32>(0i, 0i, -1i)), Struct_2(vec3<i32>(-1i, 135i, -42613i)), Struct_2(vec3<i32>(47712i, 5117i, 2147483647i)), Struct_2(vec3<i32>(2147483647i, 0i, 0i)), Struct_2(vec3<i32>(-1i, -1i, -39567i)), Struct_2(vec3<i32>(1285i, -14964i, 1i)));

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: vec2<f32>;

var<private> global3: i32 = -4714i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = select(max(_wgslsmith_sub_vec2_i32(abs(-vec2<i32>(u_input.b, u_input.b)), vec2<i32>(_wgslsmith_sub_i32(u_input.d, -66793i), u_input.b)), vec2<i32>(1i, 1i) << (_wgslsmith_mod_vec2_u32(u_input.c.xy, ~u_input.c.zy) % vec2<u32>(32u))), -(vec2<i32>(u_input.b, u_input.b) | ~max(vec2<i32>(u_input.d, -39940i), vec2<i32>(51206i, 2147483647i))), vec2<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), false));
    global0 = array<Struct_2, 17>();
    var_0 = (-vec2<i32>(-var_0.x, 6795i << (u_input.c.x % 32u)) | select(_wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, var_0.x), countOneBits(vec2<i32>(0i, var_0.x))), vec2<i32>(1i, 15181i) ^ ~vec2<i32>(var_0.x, 10751i), true)) >> (abs(vec2<u32>(0u, min(~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(53914u, 81339u, u_input.a), vec3<u32>(u_input.a, 53577u, 4294967295u))))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f), 149f), -484f) * vec3<f32>(2705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))), global2.x));
    global2 = _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(11570u, 20u)]);
    return Struct_3(reverseBits(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u), _wgslsmith_mult_u32(~u_input.a, ~u_input.c.x))));
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_0, -168f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 2163f, 187f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, 466f, 649f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1343f, -1000f, -110f))))));
    global3 = -10155i;
    var var_1 = u_input.b;
    global3 = _wgslsmith_dot_vec2_i32(((-vec2<i32>(u_input.b, u_input.b) | abs(vec2<i32>(u_input.d, u_input.b))) >> (_wgslsmith_clamp_vec2_u32(select(u_input.c.xx, vec2<u32>(u_input.a, 1u), vec2<bool>(false, arg_1)), vec2<u32>(u_input.c.x, 119071u), vec2<u32>(u_input.c.x, 53584u)) % vec2<u32>(32u))) & -vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b), _wgslsmith_sub_i32(44521i, -1i)), (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, u_input.b), vec2<i32>(u_input.b, 2147483647i))) >> (u_input.c.zy % vec2<u32>(32u)));
    var var_2 = func_2(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x));
    return -1i;
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = func_2(reverseBits(0u));
    let var_1 = 1u;
    global3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-(~arg_0.c), 11326i), _wgslsmith_add_i32(_wgslsmith_sub_i32(20747i, _wgslsmith_sub_i32(0i ^ arg_0.c, ~u_input.b)), _wgslsmith_dot_vec2_i32((vec2<i32>(arg_0.c, -33133i) ^ vec2<i32>(arg_0.c, 6263i)) >> (arg_0.b.e.wy % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, arg_0.c), vec2<i32>(u_input.d, -2147483647i), vec2<i32>(u_input.b, u_input.b)))));
    global2 = arg_0.a.a.yw;
    var_0 = func_2(_wgslsmith_div_u32(var_1, ~arg_0.b.b.x));
    return 170f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.b & (func_1(-1485f, any(vec2<bool>(false, true))) | u_input.b));
    global3 = ~firstTrailingBit(-29021i) & -31281i;
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1013f, 181f, -455f, -996f) + vec4<f32>(-278f, global2.x, -1000f, -815f))), min(vec3<u32>(u_input.c.x, u_input.a, 9550u), u_input.c), 41137u, select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), select(~vec4<u32>(28904u, u_input.a, u_input.c.x, 47261u), vec4<u32>(u_input.a, 0u, 70327u, 29496u), vec4<bool>(false, false, true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-538f, global2.x, 1000f, -342f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 241f, global2.x) * vec4<f32>(global2.x, global2.x, 115f, global2.x))), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a)), u_input.c), abs(u_input.c.x), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true)), vec4<u32>(~4294967295u, _wgslsmith_mult_u32(45031u, u_input.c.x), 53236u, 95537u)), countOneBits(2147483647i))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-410f, 640f)), -195f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f * global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1508f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_1(vec4<f32>(282f, global2.x, 1015f, 841f), u_input.c, 49089u, vec4<bool>(true, true, true, true), vec4<u32>(u_input.a, u_input.a, 1u, 1u)), Struct_1(vec4<f32>(-1000f, -1135f, global2.x, 435f), u_input.c, u_input.c.x, vec4<bool>(true, false, true, false), vec4<u32>(32231u, 1u, 35583u, u_input.a)), var_0))) - global2.x)), u_input.c, u_input.a, vec4<bool>(true, select(true, true, false), true, (_wgslsmith_mult_u32(u_input.a, u_input.c.x) << (_wgslsmith_clamp_u32(93142u, u_input.c.x, 36698u) % 32u)) > u_input.a), (_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1u, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 19916u, 0u, 36009u), vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a))) | vec4<u32>(u_input.a & u_input.c.x, u_input.a, ~1u, u_input.a)) << (firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, u_input.c.x), vec4<u32>(u_input.c.x, 32730u, u_input.a, u_input.c.x)), vec4<u32>(99676u, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<u32>(4294967295u, 17875u, 28659u, u_input.c.x))) % vec4<u32>(32u)));
    global3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - global2.x) * var_2.a.x), -138f, 1324f), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i | u_input.b, -u_input.b, u_input.d), _wgslsmith_clamp_vec3_i32(-vec3<i32>(34414i, u_input.d, 35750i), vec3<i32>(u_input.d, var_0, u_input.b), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 20015i, 46706i), vec3<i32>(2147483647i, var_0, var_0)))), min(var_2.b.x, 720u));
}

