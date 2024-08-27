struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<bool> {
    global1 = Struct_1(global1.a);
    var var_0 = Struct_1(global1.a);
    var var_1 = vec2<u32>(~1u, u_input.e << (16160u % 32u)) << (select(vec2<u32>(u_input.e, ~4294967295u), select(~vec2<u32>(27235u, 1u) >> (vec2<u32>(u_input.e, 12071u) % vec2<u32>(32u)), vec2<u32>(0u ^ u_input.e, u_input.e), vec2<bool>(true, true)), false) % vec2<u32>(32u));
    var var_2 = u_input.e & var_1.x;
    let var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, abs(11720i), u_input.a.x), (countOneBits(vec3<i32>(u_input.a.x, -2147483647i, global0.x) << (vec3<u32>(var_1.x, var_1.x, u_input.e) % vec3<u32>(32u))) & ((u_input.b | u_input.b) >> (max(vec3<u32>(48251u, var_1.x, var_1.x), vec3<u32>(0u, 14575u, var_1.x)) % vec3<u32>(32u)))) | u_input.c);
    return !vec4<bool>(false, true, all(vec3<bool>(global1.a, global1.a, true)) & var_0.a, (true | (arg_0 != 5723i)) || true);
}

fn func_2() -> bool {
    global0 = -select(u_input.a, firstLeadingBit(vec3<i32>(firstTrailingBit(2147483647i), 4808i ^ global0.x, -4881i)), !select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, false, global1.a), vec3<bool>(global1.a, true, global1.a)));
    var var_0 = select(~select(vec3<u32>(u_input.e, ~u_input.e, u_input.e), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(2800u, u_input.e, 1u)), ~vec3<u32>(1u, 4294967295u, 92020u)), select(!vec3<bool>(global1.a, true, true), vec3<bool>(false, global1.a, true), vec3<bool>(false, global1.a, global1.a))), select(~(abs(vec3<u32>(u_input.e, u_input.e, u_input.e)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 57437u, u_input.e), vec3<u32>(u_input.e, u_input.e, 4294967295u))), vec3<u32>(_wgslsmith_div_u32(0u, abs(38203u)), ~u_input.e << (1u % 32u), u_input.e), vec3<bool>(any(!vec3<bool>(global1.a, global1.a, true)), any(!vec4<bool>(false, false, global1.a, true)), false)), firstLeadingBit(~27414u) <= abs(u_input.e));
    var var_1 = Struct_1(!any(func_3(global0.x, _wgslsmith_f_op_f32(920f - -952f))));
    var var_2 = -1039f;
    var_0 = firstTrailingBit(~reverseBits(vec3<u32>(var_0.x, 80548u, abs(u_input.e))));
    return true & all(vec2<bool>(!any(vec3<bool>(var_1.a, true, global1.a)), true));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2527f)) + -1126f)));
    global1 = Struct_1(func_2());
    var var_1 = _wgslsmith_dot_vec3_u32(~(min(vec3<u32>(u_input.e, 120548u, 4294967295u) ^ vec3<u32>(4294967295u, 47580u, 0u), abs(vec3<u32>(u_input.e, u_input.e, 0u))) << (firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 123536u, 31552u), vec3<u32>(79573u, u_input.e, 7261u))) % vec3<u32>(32u))), vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(min(vec4<u32>(47383u, 1u, 30950u, 31707u), vec4<u32>(3188u, 14364u, 22191u, u_input.e)), ~vec4<u32>(u_input.e, u_input.e, 50374u, u_input.e)) & _wgslsmith_mult_u32(reverseBits(21037u), u_input.e & 0u), u_input.e));
    global1 = Struct_1(!global1.a);
    var_1 = u_input.e;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~countOneBits(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, u_input.c.x, 15003i), -u_input.a, vec3<i32>(global0.x, 2147483647i, 17259i))) >> (~_wgslsmith_div_vec3_u32(countOneBits(reverseBits(vec3<u32>(4294967295u, u_input.e, u_input.e))), firstLeadingBit(vec3<u32>(u_input.e, u_input.e, u_input.e))) % vec3<u32>(32u));
    let var_0 = select(vec4<bool>(func_1(), !all(select(vec4<bool>(false, true, global1.a, false), vec4<bool>(global1.a, global1.a, global1.a, true), true)), true, global1.a), !vec4<bool>(!global1.a || all(vec4<bool>(true, global1.a, true, true)), true, true, global1.a), select(select(!select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, global1.a, true, false), false), !select(vec4<bool>(true, global1.a, global1.a, true), vec4<bool>(true, true, false, true), false), !global1.a), !func_3(~(-8533i), _wgslsmith_div_f32(693f, 397f)), all(!select(vec3<bool>(global1.a, global1.a, true), vec3<bool>(global1.a, false, global1.a), global1.a))));
    let var_1 = ~select(min(select(vec4<i32>(u_input.d.x, 13962i, u_input.b.x, 0i), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.d.x), var_0.x) & vec4<i32>(u_input.b.x, global0.x, -25192i, global0.x), abs(vec4<i32>(global0.x, -2147483647i, u_input.a.x, global0.x))), ~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 40543i, -50476i, 8790i), vec4<i32>(-43489i, global0.x, 1i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, global0.x, global0.x), vec4<i32>(u_input.d.x, global0.x, 18936i, u_input.a.x)), !vec4<bool>(true, true, var_0.x, false)), global0.x <= u_input.d.x);
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(~min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 7822u), vec2<u32>(u_input.e, u_input.e)), ~0u), 4294967295u << (_wgslsmith_clamp_u32(4294967295u ^ u_input.e, abs(u_input.e), ~1u) % 32u)), ~1u);
    global0 = vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(0i), i32(-1i) * -5962i), abs(2147483647i), var_1.x);
    global0 = _wgslsmith_mult_vec3_i32(~(~vec3<i32>(global0.x, var_1.x, var_1.x) & u_input.b), vec3<i32>(8355i, var_1.x, 22307i));
    let x = u_input.a;
    s_output = StorageBuffer(-13923i, countOneBits(1i), max(_wgslsmith_sub_vec2_i32(u_input.b.zz, var_1.yy), abs(global0.yx)));
}

