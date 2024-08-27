struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<u32> {
    let var_0 = arg_0;
    global0 = !select(select(!vec2<bool>(false, arg_0.b), arg_1, (arg_1.x && true) || global0.x), arg_1, vec2<bool>(true, all(vec4<bool>(true, arg_0.b, arg_1.x, true))));
    return max(_wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, 1u, 4294967295u, 31836u)) >> ((~vec4<u32>(61805u, 5558u, 12086u, 4294967295u) >> (abs(vec4<u32>(0u, 0u, 0u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u, reverseBits(firstTrailingBit(4294967295u)), firstTrailingBit(firstTrailingBit(1u)), 1308u), vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(69126u, 4294967295u), vec2<u32>(34587u, 4294967295u))), 0u, ~1u << (firstTrailingBit(4294967295u) % 32u), 1u)), ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(63171u, 0u, 4294967295u, 31665u))));
}

fn func_2() -> vec2<bool> {
    global0 = vec2<bool>(any(vec2<bool>(true, true)), any(!(!vec3<bool>(true, global0.x, global0.x))) || !any(vec4<bool>(global0.x, false, global0.x, global0.x)));
    var var_0 = (~vec4<i32>(_wgslsmith_mult_i32(-39656i, -11005i), u_input.a.x | -2147483647i, u_input.a.x & 0i, -u_input.a.x) & firstLeadingBit(abs(reverseBits(vec4<i32>(-18450i, -1i, 69361i, -2147483647i))))) >> (func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(413f, 1789f, 525f))), any(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)))), !(!vec2<bool>(global0.x, false))) % vec4<u32>(32u));
    var_0 = vec4<i32>(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.zz, countOneBits(select(var_0.yx, vec2<i32>(u_input.a.x, u_input.a.x), global0.x))), abs(-var_0.x)), _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.a.x), ~vec4<i32>(-4973i, u_input.a.x, 43527i, var_0.x))), _wgslsmith_mult_i32(_wgslsmith_add_i32(abs(var_0.x), max(2147483647i, 8944i)), abs(-2147483647i))), var_0.x);
    return select(vec2<bool>(_wgslsmith_f_op_f32(trunc(1f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(885f + 183f)), global0.x), !(!(!(!vec2<bool>(global0.x, false)))), all(vec2<bool>(!global0.x, global0.x && all(vec3<bool>(global0.x, false, global0.x)))));
}

fn func_1() -> vec2<bool> {
    global0 = select(select(select(!func_2(), !vec2<bool>(global0.x, global0.x), false), func_2(), any(vec4<bool>(global0.x, false, true, true))), select(select(!select(vec2<bool>(false, true), vec2<bool>(false, global0.x), global0.x), select(func_2(), vec2<bool>(false, false), true), select(!global0.x, true, !global0.x)), select(vec2<bool>(global0.x, global0.x), select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), global0.x & false), !(!vec2<bool>(global0.x, global0.x))), global0.x), select(!func_2().x, global0.x != global0.x, true));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(916f)), _wgslsmith_f_op_f32(min(-1790f, -496f)), _wgslsmith_f_op_f32(sign(1157f))))), global0.x);
    var var_1 = false;
    global0 = !(!vec2<bool>(all(!vec3<bool>(var_0.b, global0.x, var_0.b)), !(var_0.a.a.x <= var_0.a.a.x)));
    var_1 = false;
    return !vec2<bool>(var_0.b, !var_0.b && all(select(vec4<bool>(global0.x, var_0.b, var_0.b, global0.x), vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, var_0.b, true, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!vec2<bool>(true, !(true | global0.x)));
    global0 = !func_1();
    let var_0 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-565f * -714f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2953f, -1480f) - _wgslsmith_f_op_f32(671f * 740f)), _wgslsmith_f_op_f32(-1f))), -vec2<i32>(firstTrailingBit(1i), u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1040f), false);
    var var_1 = vec2<u32>(func_3(Struct_2(var_0.a, var_0.d), func_1()).x, 1u);
    var var_2 = 4294967295u;
    var var_3 = func_3(Struct_2(var_0.a, var_0.d | var_0.d), vec2<bool>(global0.x, true)).x | ~var_1.x;
    var_1 = abs(firstTrailingBit(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(10418u, var_1.x)), vec2<u32>(40482u, var_1.x)))) | vec2<u32>(45614u, reverseBits(~(12020u >> (var_1.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, var_1.x << (1u % 32u), var_1.x), 1020f);
}

