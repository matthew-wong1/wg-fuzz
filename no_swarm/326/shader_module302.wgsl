struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<bool>(false, true, true), -24785i, -70423i), Struct_1(vec3<bool>(true, false, false), 5248i, -17793i), Struct_1(vec3<bool>(false, true, true), 0i, i32(-2147483648)), Struct_1(vec3<bool>(true, false, false), -47581i, -9047i), Struct_1(vec3<bool>(true, false, true), 32943i, 1i), Struct_1(vec3<bool>(true, true, false), 22272i, -9740i), Struct_1(vec3<bool>(true, true, true), 1i, -38797i), Struct_1(vec3<bool>(false, false, false), 10210i, 10744i), Struct_1(vec3<bool>(true, true, false), 39386i, 2147483647i), Struct_1(vec3<bool>(false, true, false), 2147483647i, -83337i), Struct_1(vec3<bool>(false, false, true), -22647i, -1i), Struct_1(vec3<bool>(false, false, false), -2461i, 2147483647i));

var<private> global1: bool = false;

var<private> global2: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(51825i, 0i, 16789i), vec3<i32>(4379i, -1i, 1i), vec3<i32>(26575i, 0i, -51666i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(19729i, -12805i, 1i), vec3<i32>(1i, 1i, 45937i), vec3<i32>(-29445i, 55436i, 0i), vec3<i32>(0i, 2147483647i, -26791i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global1 = true;
    global1 = true;
    global1 = select(true, (u_input.d.x | arg_1.c) != abs(arg_0.x), -6827i != u_input.c.x);
    return arg_1.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(767f + _wgslsmith_f_op_f32(f32(-1f) * -913f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2254f))));
    var var_1 = Struct_1(select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, true, (arg_1.x == u_input.a.x) || true), select(select(vec3<bool>(true, arg_0.x, false), !vec3<bool>(false, true, arg_0.x), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x)), select(func_2(vec2<i32>(47278i, u_input.c.x), Struct_1(vec3<bool>(false, arg_0.x, false), u_input.c.x, u_input.d.x), arg_1.x, global0[_wgslsmith_index_u32(93024u, 12u)]), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), arg_0.x), func_2(u_input.d.xw, global0[_wgslsmith_index_u32(arg_1.x, 12u)], 9078u, Struct_1(vec3<bool>(arg_0.x, true, true), -59594i, u_input.c.x))), false)), -15793i, -(i32(-1i) * -(~1i)));
    var var_2 = var_1.a;
    var var_3 = Struct_1(func_2(-(u_input.c << (reverseBits(u_input.a.yx) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(u_input.b, 12u)], 55608u, Struct_1(var_1.a, -var_1.c ^ -2147483647i, _wgslsmith_add_i32(-30520i, _wgslsmith_div_i32(26485i, u_input.d.x)))), -var_1.c, var_1.b);
    let var_4 = global0[_wgslsmith_index_u32(min(reverseBits(arg_1.x), select(arg_1.x, arg_1.x, var_3.a.x)), 12u)];
    return Struct_1(func_2(-_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.zw, vec2<i32>(var_1.b, u_input.c.x)), min(vec2<i32>(-23545i, var_4.c), vec2<i32>(var_1.b, u_input.d.x)), vec2<i32>(-2147483647i, -3257i)), Struct_1(vec3<bool>(arg_0.x, !var_2.x, any(arg_0)), ~var_4.c, 0i), max(~u_input.a.x, ~u_input.b), global0[_wgslsmith_index_u32(u_input.b, 12u)]), firstLeadingBit(1i), u_input.d.x);
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = array<Struct_1, 12>();
    global2 = array<vec3<i32>, 9>();
    global0 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 63736u), vec4<u32>(u_input.b, 1u, 1u, 78014u))), vec4<u32>(~1u, 6769u, ~((2485u >> (u_input.a.x % 32u)) ^ ~u_input.b), firstLeadingBit(80603u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))))));
    return func_1(vec2<bool>(true, true), firstTrailingBit(select(vec2<u32>(u_input.a.x, 1u), (u_input.a.zy & u_input.a.xz) ^ abs(vec2<u32>(u_input.a.x, 13849u)), true))).a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x | u_input.b, 1u), vec2<u32>(select(4294967295u, 33262u, true), u_input.b)), u_input.b, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b >> (0u % 32u), 4294967295u, 7424u)), ~1u), vec4<u32>(~select(_wgslsmith_sub_u32(u_input.a.x, 34947u), 5147u, true), ~(~max(u_input.a.x, u_input.a.x)), max(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(16719u, 0u)), u_input.a.yy), u_input.a.x), u_input.a.x));
    var var_1 = vec3<bool>(any(vec2<bool>(false, true)), false, true);
    let var_2 = 2147483647i;
    var var_3 = Struct_1(vec3<bool>(true, any(vec3<bool>(!var_1.x, var_1.x, true)), var_1.x == !var_1.x), ~(i32(-1i) * -42691i), ~var_2);
    var_3 = func_1(vec2<bool>(true, all(vec2<bool>(var_1.x, all(vec4<bool>(var_1.x, var_3.a.x, true, var_1.x))))), vec2<u32>(firstLeadingBit(0u), ~_wgslsmith_mult_u32(~u_input.b, 3266u)));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-466f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-180f)))));
    var_1 = var_3.a;
    global0 = array<Struct_1, 12>();
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(176f)))))) + 391f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(func_1(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5, 233f) * vec2<f32>(-283f, 297f))), ~select(vec2<u32>(var_0.x, 25443u), var_0.wx, var_3.a.zz)).c, _wgslsmith_mod_i32(reverseBits(-var_2), max(max(0i, -2147483647i), ~u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1055f))) + var_5) + _wgslsmith_f_op_f32(var_5 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_5 + var_5), var_5)))), _wgslsmith_f_op_f32(ceil(var_5)));
}

