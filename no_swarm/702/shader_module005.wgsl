struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec4<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -437f, 1014f);

var<private> global1: bool;

var<private> global2: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    global1 = any(!select(!global2.ywx, vec3<bool>(select(true, global2.x, global2.x), u_input.a > u_input.a, global2.x), vec3<bool>(true, any(global2.wzw), !global2.x)));
    var var_0 = any(global2.www);
    var var_1 = global2.wz;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -1758f, -249f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, -925f, -456f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1024f, 497f, -398f) - vec3<f32>(global0.x, global0.x, 1197f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-405f, 1039f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.x)))))));
    return !vec3<bool>(!all(select(vec3<bool>(true, global2.x, var_1.x), global2.xwz, var_1.x)), var_1.x, true & var_1.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = global0.x;
    let var_1 = any(func_3());
    let var_2 = Struct_3(arg_0.a.x >> (u_input.a % 32u), arg_0, Struct_2(true, !select(vec3<bool>(global2.x, false, true), global2.yyw, any(vec4<bool>(true, var_1, arg_0.b, true))), 177f), global2.zxx, Struct_2(all(vec3<bool>(false, !global2.x, arg_0.b != var_1)), !global2.zwy, -2034f));
    var var_3 = Struct_1(-arg_0.a, max(-27086i, 64242i) > countOneBits(_wgslsmith_dot_vec3_i32(arg_0.a.wzw, -arg_0.a.wxy)));
    var_3 = arg_0;
    return ~countOneBits(~4294967295u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(select(firstTrailingBit(u_input.b), -vec3<i32>(1i, select(-1i, -1i, false), u_input.b.x), !(arg_1.c > 1f)), vec3<i32>(~(~(-arg_2.a.x)), -2147483647i, abs(u_input.c.x)));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(0u, abs(func_2(Struct_1(arg_2.a, false)))), abs(1u) >> ((1u >> (1u % 32u)) % 32u)), ~u_input.a, ~_wgslsmith_mod_u32(firstLeadingBit(arg_3), _wgslsmith_mod_u32(arg_3 & 38641u, arg_3)));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.c)))), -362f)));
    var var_2 = global0.xy;
    global1 = !(var_1.x < 25757u);
    return var_0.x;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> Struct_2 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))), -1079f, global0.x);
    global2 = vec4<bool>(!global2.x, false, true, arg_0.c.a);
    var var_0 = Struct_3(arg_2, arg_0.b, arg_0.e, select(arg_0.c.b, global2.yxw, arg_0.d.x), Struct_2(!arg_0.b.b, vec3<bool>(true, true, !global2.x), global0.x));
    var var_1 = Struct_4(Struct_2(false, select(!select(vec3<bool>(true, true, false), arg_0.d, global2.zyy), arg_0.c.b, false | (arg_1 <= var_0.e.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2372f * arg_1), _wgslsmith_f_op_f32(min(arg_1, arg_0.c.c))))), true, vec4<i32>(reverseBits(-12442i), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-42774i, arg_2, arg_2, -1i), max(var_0.b.a, vec4<i32>(arg_0.a, arg_2, arg_2, var_0.b.a.x)))), 0i, var_0.a | _wgslsmith_mod_i32(max(1i, -5060i), 2147483647i)), arg_0.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1718f))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(4294967295u, 31266u, 4294967295u, 1u)) << (vec4<u32>(select(u_input.a, 15138u, true), _wgslsmith_sub_u32(31651u, 16186u), u_input.a >> (u_input.a % 32u), u_input.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), u_input.a, u_input.a, reverseBits(1u))), ~_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 16795u, u_input.a, u_input.a)), ~countOneBits(vec4<u32>(u_input.a, 0u, 4294967295u, 9089u)), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(23338u, u_input.a, 50910u, 4294967295u))));
    return Struct_2(!(((arg_0.d.x | arg_0.e.a) || var_1.a.b.x) && all(vec4<bool>(true, true, true, arg_0.c.b.x))), global2.xxy, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1079f - -1120f)))), _wgslsmith_div_f32(256f, _wgslsmith_f_op_f32(min(-116f, _wgslsmith_f_op_f32(arg_1 - var_0.e.c)))))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_2 {
    global1 = all(!select(select(!vec2<bool>(arg_0.b, arg_0.d.a), arg_0.a.b.yy, false), select(!vec2<bool>(false, global2.x), select(global2.xz, arg_0.d.b.zx, global2.x), vec2<bool>(global2.x, false)), global2.zz));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * arg_0.a.c), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1000f - global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    global1 = !arg_0.b;
    var var_0 = 4294967295u;
    global0 = vec3<f32>(174f, -1126f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), -1000f)));
    return Struct_2(!arg_0.a.b.x, vec3<bool>(any(vec3<bool>(true, all(arg_0.d.b), false)), global2.x, global2.x), arg_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(Struct_2(any(vec2<bool>(true, global2.x)), global2.yyy, _wgslsmith_f_op_f32(step(-543f, _wgslsmith_f_op_f32(-1525f * global0.x)))), true, -vec4<i32>(_wgslsmith_div_i32(-26548i, -16221i), 0i, u_input.b.x, 3028i), func_4(Struct_3(func_1(Struct_2(false, global2.yxy, 210f), Struct_2(global2.x, global2.xwy, global0.x), Struct_1(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 44107i), global2.x), 4294967295u), Struct_1(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.c.x), global2.x), Struct_2(global2.x, global2.wzw, -1345f), func_3(), Struct_2(true, vec3<bool>(true, global2.x, true), global0.x)), _wgslsmith_f_op_f32(1194f + _wgslsmith_f_op_f32(f32(-1f) * -1464f)), select(u_input.b.x, u_input.c.x, global2.x) ^ -38775i), -1125f), vec4<u32>(51123u, countOneBits(0u), 16726u, 0u));
    let var_1 = reverseBits(vec2<u32>(_wgslsmith_clamp_u32(24262u, 1u, u_input.a), _wgslsmith_mod_u32(abs(u_input.a), ~50877u)) | ~vec2<u32>(4294967295u, u_input.a));
    var var_2 = Struct_2(((var_1.x << (u_input.a % 32u)) << (abs(select(u_input.a, 0u, true)) % 32u)) <= (~var_1.x ^ ~var_1.x), !(!(!var_0.b)), _wgslsmith_f_op_f32(select(func_5(Struct_4(func_4(Struct_3(u_input.b.x, Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 33937i, u_input.b.x), var_0.a), Struct_2(global2.x, global2.wwx, -493f), vec3<bool>(global2.x, true, true), Struct_2(false, vec3<bool>(var_0.a, true, true), global0.x)), var_0.c, 0i), any(vec4<bool>(true, false, var_0.a, var_0.a)), vec4<i32>(u_input.b.x, u_input.c.x, -1i, u_input.c.x) << (vec4<u32>(u_input.a, 39475u, 9510u, u_input.a) % vec4<u32>(32u)), Struct_2(true, vec3<bool>(global2.x, global2.x, true), global0.x), 777f), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 74064u), ~vec4<u32>(var_1.x, u_input.a, 49787u, 20779u))).c, _wgslsmith_f_op_f32(func_5(Struct_4(Struct_2(var_0.b.x, global2.yxw, -662f), var_0.a, vec4<i32>(2147483647i, u_input.c.x, -1i, u_input.b.x), Struct_2(true, vec3<bool>(true, true, true), var_0.c), 578f), vec4<u32>(1u, 4294967295u, 0u, 85154u)).c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), any(!select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(false, false, false, false), var_0.b.x)))));
    var var_3 = Struct_3(8710i, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.b.x, 0i), 12208i, i32(-1i) * -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 14686i, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.a, 13318u, 49726u, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, -34511i, u_input.b.x, u_input.b.x))), global2.x), Struct_2(!func_5(Struct_4(Struct_2(true, var_2.b, var_0.c), var_2.a, vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, -4355i), Struct_2(true, vec3<bool>(true, var_0.a, var_0.b.x), var_2.c), global0.x), vec4<u32>(49415u, u_input.a, 0u, var_1.x) << (vec4<u32>(47256u, var_1.x, var_1.x, 37358u) % vec4<u32>(32u))).b.x, !select(func_3(), func_5(Struct_4(Struct_2(var_0.a, global2.ywz, var_0.c), var_0.a, vec4<i32>(u_input.c.x, u_input.b.x, 1i, u_input.b.x), Struct_2(true, var_0.b, -195f), 1391f), vec4<u32>(var_1.x, 12780u, var_1.x, 1u)).b, global2.x), var_0.c), !var_2.b, Struct_2(var_2.a, select(vec3<bool>(var_2.b.x, any(vec4<bool>(var_2.a, true, true, true)), false), var_0.b, func_5(Struct_4(Struct_2(true, var_0.b, var_0.c), false, vec4<i32>(u_input.c.x, u_input.c.x, -15908i, 1i), Struct_2(var_0.b.x, vec3<bool>(true, var_0.a, var_2.a), var_0.c), 1081f), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, var_1.x, u_input.a, 7287u))).b), var_2.c));
    global1 = !(~1u <= var_1.x);
    var var_4 = var_3.b;
    var_3 = Struct_3(u_input.b.x & _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.b.x, -2147483647i) << (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(var_4.a.zw, var_3.b.a.yy)), select(var_3.b.a.xz, u_input.b.zz & vec2<i32>(1i, var_4.a.x), !global2.yx)), Struct_1(~_wgslsmith_sub_vec4_i32(-var_4.a, _wgslsmith_mod_vec4_i32(var_4.a, vec4<i32>(var_4.a.x, u_input.c.x, var_4.a.x, 65432i))), var_0.b.x), Struct_2(select(true, 32388i != var_3.a, func_4(Struct_3(31580i, Struct_1(vec4<i32>(var_4.a.x, -1i, 1094i, 34334i), false), var_3.e, vec3<bool>(false, false, true), var_3.c), _wgslsmith_f_op_f32(var_3.c.c * 1579f), reverseBits(u_input.c.x)).b.x), select(select(!vec3<bool>(true, false, var_2.a), select(global2.zyy, vec3<bool>(true, false, var_0.a), global2.x), all(var_2.b.zz)), func_5(Struct_4(var_3.e, global2.x, var_3.b.a, Struct_2(var_2.b.x, var_0.b, 2245f), 402f), vec4<u32>(u_input.a, u_input.a, var_1.x, u_input.a) ^ vec4<u32>(var_1.x, 47188u, 0u, var_1.x)).b, vec3<bool>(var_0.a, true, true)), _wgslsmith_f_op_f32(-125f * _wgslsmith_div_f32(613f, _wgslsmith_f_op_f32(select(var_0.c, var_3.c.c, var_0.b.x))))), var_0.b, func_5(Struct_4(var_3.e, -u_input.c.x > -var_3.a, vec4<i32>(i32(-1i) * -8169i, min(4196i, -4804i), var_3.b.a.x | -1i, 0i), Struct_2(true, vec3<bool>(true, var_2.a, false), 1013f), _wgslsmith_f_op_f32(f32(-1f) * -604f)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(951u, 0u, u_input.a, 0u)), ~vec4<u32>(u_input.a, u_input.a, var_1.x, var_1.x))));
    let var_5 = Struct_4(func_5(Struct_4(Struct_2(!var_3.e.b.x, select(vec3<bool>(true, true, false), var_3.d, vec3<bool>(var_3.d.x, var_4.b, true)), 1000f), all(var_3.c.b.xy), _wgslsmith_clamp_vec4_i32(vec4<i32>(17275i, var_4.a.x, u_input.b.x, var_4.a.x), vec4<i32>(2147483647i, -25499i, var_3.b.a.x, u_input.b.x), var_3.b.a) << (~vec4<u32>(1u, 4294967295u, u_input.a, 11788u) % vec4<u32>(32u)), Struct_2(var_2.a, func_4(Struct_3(var_4.a.x, var_3.b, Struct_2(var_3.c.b.x, vec3<bool>(var_0.b.x, var_0.b.x, false), var_2.c), vec3<bool>(global2.x, global2.x, var_4.b), Struct_2(false, vec3<bool>(var_0.a, true, var_3.c.b.x), var_0.c)), -1052f, var_4.a.x).b, func_4(Struct_3(-1i, var_3.b, var_3.c, vec3<bool>(var_3.b.b, var_2.b.x, var_0.b.x), var_3.c), var_0.c, 24204i).c), _wgslsmith_f_op_f32(trunc(var_0.c))), vec4<u32>(1u, abs(var_1.x), 36715u, 0u)), any(select(select(vec4<bool>(var_0.a, true, true, false), !vec4<bool>(false, true, var_2.a, var_3.e.b.x), var_0.b.x), select(select(vec4<bool>(var_4.b, var_3.c.a, false, false), vec4<bool>(global2.x, false, var_2.a, var_4.b), false), vec4<bool>(true, true, true, true), all(var_3.e.b)), select(select(vec4<bool>(false, var_4.b, true, false), vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(var_3.e.a, false, false, true)), !vec4<bool>(var_0.a, false, true, true), true))), -(reverseBits(-vec4<i32>(-44565i, 0i, -14822i, 2147483647i)) << ((~vec4<u32>(4294967295u, var_1.x, 4294967295u, 41988u) & ~vec4<u32>(56905u, 4294967295u, 36905u, 85352u)) % vec4<u32>(32u))), var_3.c, _wgslsmith_f_op_f32(var_3.e.c - -892f));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), -2408f, _wgslsmith_f_op_f32(trunc(var_0.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 229f, -1000f) + vec3<f32>(var_5.e, var_2.c, var_3.e.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, 1305f, 956f))), vec3<bool>(true | var_0.a, all(vec4<bool>(true, false, false, true)), var_5.a.a || true))), vec3<f32>(var_0.c, var_3.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_5.e - func_4(Struct_3(-69347i, var_3.b, var_5.a, vec3<bool>(var_0.b.x, false, var_0.a), Struct_2(var_0.b.x, global2.yxz, var_0.c)), -610f, -55594i).c), 1326f, _wgslsmith_f_op_f32(-var_2.c)), vec3<f32>(-608f, var_5.a.c, -1739f))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.x, ~1u, _wgslsmith_clamp_u32(var_1.x, var_1.x, 27747u) & _wgslsmith_add_u32(var_1.x, var_1.x)), vec4<i32>(-1i | var_3.a, _wgslsmith_add_i32(var_4.a.x, _wgslsmith_mod_i32(abs(var_4.a.x), ~var_5.c.x)), _wgslsmith_mod_i32(-2147483647i, u_input.c.x) | _wgslsmith_mod_i32(~u_input.c.x, u_input.c.x), -(var_5.c.x & var_5.c.x) ^ u_input.c.x));
}

