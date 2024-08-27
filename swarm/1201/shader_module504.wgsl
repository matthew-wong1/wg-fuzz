struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 65347u, 18860u);

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(535f, -1948f), vec2<f32>(224f, 1126f), vec2<f32>(-2118f, 1000f), vec2<f32>(343f, 2651f), vec2<f32>(-1035f, -1389f), vec2<f32>(-659f, 141f), vec2<f32>(1383f, -2510f), vec2<f32>(-800f, -253f), vec2<f32>(229f, -761f), vec2<f32>(985f, -947f));

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 12761u), ~_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.ywz), _wgslsmith_clamp_vec3_u32(max(u_input.c.zxx, vec3<u32>(global0.x, u_input.c.x, 65998u)), u_input.c.wzy, u_input.c.wyw)), u_input.a);
    var var_0 = !select(!vec4<bool>(any(global2.xy), true, global2.x, !global2.x), !vec4<bool>(true, all(global2.xy), false, true), true);
    let var_1 = vec2<u32>(3321u, 1u) | _wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(max(vec2<u32>(global0.x, u_input.a), vec2<u32>(u_input.c.x, 8808u)), u_input.c.wy)), select(vec2<u32>(reverseBits(6238u), ~0u), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(u_input.a, global0.x)), vec2<bool>(true, false)));
    let var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e.x, countOneBits(53699i | u_input.e.x), min(select(1i, 25494i, true), i32(-1i) * -1856i), select(min(u_input.b.x, u_input.d.x), u_input.e.x, var_0.x)), vec4<i32>(-u_input.b.x, 1i, select(u_input.b.x, u_input.e.x, false), -2147483647i) >> (firstTrailingBit(vec4<u32>(1u, var_1.x, global0.x, 0u)) % vec4<u32>(32u)));
    var var_3 = all(select(var_0.yxx, var_0.zzy, global2.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2097f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1848f, -861f))) + _wgslsmith_f_op_f32(f32(-1f) * -132f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f - 750f) + _wgslsmith_div_f32(190f, -111f)))) + _wgslsmith_f_op_f32(abs(-806f))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1236f, 365f, -1002f, -498f) * vec4<f32>(1927f, 1962f, -1000f, 898f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 919f, 362f, -1656f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-813f, 406f, -687f, -296f) * vec4<f32>(565f, -2584f, 275f, 385f)))))));
    var var_1 = _wgslsmith_f_op_f32(1771f - -1684f);
    var var_2 = Struct_2(select(false, select(select(true, true, u_input.b.x <= 1i), true, any(select(vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(global2.x, true, false, global2.x), global2.x))), !global2.x), Struct_1(-1i, firstTrailingBit(max(u_input.e.x, u_input.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(256f)), _wgslsmith_f_op_f32(round(-449f)), var_0.x < var_2.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-932f, var_0.x))), var_0.x, var_2.b.c), vec4<f32>(var_2.b.c, -2507f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1014f + var_0.x) - var_0.x))), vec4<bool>(~u_input.d.x > _wgslsmith_sub_i32(56394i, 0i), false, all(select(vec3<bool>(var_2.a, true, var_2.a), select(vec3<bool>(true, true, var_2.a), vec3<bool>(false, var_2.a, var_2.a), var_2.a), vec3<bool>(false, false, true))), true)));
    global2 = vec3<bool>(true, true, all(!vec3<bool>(global2.x, all(vec4<bool>(false, true, false, global2.x)), global2.x)));
    return _wgslsmith_f_op_f32(step(var_2.b.c, _wgslsmith_div_f32(-537f, _wgslsmith_f_op_f32(-var_0.x)))) <= var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_1 {
    global2 = select(vec3<bool>(true, true, global2.x), select(vec3<bool>(true, !func_2(), true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(global2.x, true, global2.x))), u_input.a <= global0.x), true);
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(reverseBits(~(arg_1.x & arg_0.a)), i32(-1i) * -19555i), arg_1.x, -1i);
    global2 = select(select(vec3<bool>(true, all(vec3<bool>(global2.x, global2.x, global2.x)), true), !vec3<bool>(!global2.x, any(vec4<bool>(global2.x, true, true, global2.x)), true | global2.x), false && !(arg_0.c < arg_0.c)), !select(!select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, false, global2.x)), !vec3<bool>(global2.x, global2.x, global2.x), false), true);
    let var_1 = _wgslsmith_add_vec2_u32(min(vec2<u32>(~_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(0u, 31609u)))), ~_wgslsmith_mult_vec2_u32(global0.yy >> (global0.zx % vec2<u32>(32u)), ~vec2<u32>(4294967295u, global0.x))), vec2<u32>(~global0.x, ~4294967295u ^ ~(u_input.a << (1u % 32u))));
    let var_2 = 166f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global1 = array<vec2<f32>, 10>();
    let var_1 = Struct_2(all(select(select(select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, true, global2.x)), !vec3<bool>(global2.x, false, global2.x), !vec3<bool>(global2.x, true, global2.x)), vec3<bool>(true, any(vec4<bool>(global2.x, false, global2.x, global2.x)), global2.x || false), all(!global2.xz))), func_1(Struct_1(u_input.b.x, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-53090i, 2147483647i), u_input.e), 8943i), 348f), -(u_input.d.zz << (~vec2<u32>(88886u, 1u) % vec2<u32>(32u))), vec3<i32>(select(u_input.b.x, u_input.e.x, global2.x), u_input.b.x, 1i)));
    let var_2 = true;
    let var_3 = u_input.c.x;
    global1 = array<vec2<f32>, 10>();
    var_0 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(_wgslsmith_div_u32(global0.x, 1u), _wgslsmith_clamp_u32(0u, var_3, 0u), _wgslsmith_div_u32(var_3, u_input.c.x)) >> (~firstTrailingBit(u_input.c.wyz) % vec3<u32>(32u))), u_input.c.zzz);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3, var_3, 15775u), u_input.c.zyz), _wgslsmith_mod_vec3_u32(u_input.c.yzy, vec3<u32>(43356u, var_3, var_3))), firstTrailingBit(u_input.c.x), min(44389u, 0u))), -2147483647i, firstTrailingBit(u_input.d.x), u_input.c.zyy);
}

