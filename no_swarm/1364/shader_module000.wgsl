struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec4<f32> = vec4<f32>(-1505f, 122f, -194f, 313f);

var<private> global2: vec3<i32> = vec3<i32>(-30601i, -1i, -15529i);

var<private> global3: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = -71478i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(~(-17008i), _wgslsmith_dot_vec4_i32(~vec4<i32>(38148i, u_input.b.x, global2.x, 0i), select(vec4<i32>(1i, 11222i, -20006i, u_input.a.x), vec4<i32>(global2.x, u_input.a.x, var_0, var_0), false)))), reverseBits(global2.x) << (arg_0.x % 32u));
    let var_2 = u_input.b ^ u_input.a;
    var var_3 = vec2<u32>(4294967295u, ~arg_0.x);
    let var_4 = global1.x;
    return Struct_4(Struct_1(min(-25748i, -12479i)), _wgslsmith_add_u32(~var_3.x, arg_0.x), arg_1);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> bool {
    global2 = _wgslsmith_add_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-37754i, -32932i, -77139i, global2.x), arg_2), 1i, -1i) >> (~select(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3, arg_0.b, arg_3), vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), ~vec3<u32>(54381u, 37282u, 1u), func_2(vec2<u32>(4294967295u, 0u), arg_0.c).c.a.x) % vec3<u32>(32u)), arg_2.wzx);
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_2(Struct_1(-arg_0.a.a), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-arg_0.a.a, abs(1i), ~(arg_2.x << (arg_0.b % 32u))), reverseBits(_wgslsmith_sub_i32(-1i, global2.x))));
    var var_1 = vec4<bool>(false, true, true, arg_0.c.a.x);
    let var_2 = _wgslsmith_clamp_vec4_u32(~min(abs(firstLeadingBit(vec4<u32>(arg_3, 4294967295u, 11398u, 4294967295u))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b, 0u, 16695u, 4294967295u)), vec4<u32>(arg_0.b, arg_3, arg_0.b, 11062u), firstLeadingBit(vec4<u32>(41897u, 56981u, arg_0.b, arg_3)))), vec4<u32>(abs(abs(arg_0.b)) << (1u % 32u), arg_3, arg_3, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b, 5268u, 1u, 4294967295u), vec4<u32>(33737u, arg_0.b, arg_3, 0u) | vec4<u32>(32237u, arg_0.b, arg_3, 1182u))), ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(0u, arg_0.b, arg_3, arg_3)), ~(vec4<u32>(0u, arg_3, arg_0.b, arg_3) << (vec4<u32>(arg_3, arg_3, 0u, 4294967295u) % vec4<u32>(32u)))));
    return any(select(vec4<bool>(arg_0.c.a.x, any(select(vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(arg_0.c.a.x, arg_1.x, true, true), false)), false, arg_0.c.a.x), vec4<bool>(true || arg_0.c.a.x, func_2(var_2.yw, arg_0.c).c.a.x, any(!vec4<bool>(arg_1.x, false, arg_0.c.a.x, arg_0.c.a.x)), all(vec3<bool>(true, arg_1.x, arg_1.x))), select(select(!vec4<bool>(arg_0.c.a.x, false, false, arg_1.x), vec4<bool>(arg_1.x, false, var_1.x, false), select(vec4<bool>(false, arg_0.c.a.x, var_1.x, false), vec4<bool>(true, true, var_1.x, true), arg_1.x)), vec4<bool>(select(true, false, arg_1.x), arg_1.x, true, 4294967295u >= arg_3), !var_1.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> i32 {
    var var_0 = global1.zzz;
    var var_1 = ~(~select(abs(vec2<u32>(1u, 1u)), vec2<u32>(abs(1u), _wgslsmith_mod_u32(1u, 84582u)), select(arg_1.a, vec2<bool>(false, false), vec2<bool>(false, arg_1.a.x))));
    var_1 = _wgslsmith_clamp_vec2_u32((~_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_1.x), vec2<u32>(0u, 4294967295u)) & (~vec2<u32>(22173u, var_1.x) ^ (vec2<u32>(103065u, 36282u) & vec2<u32>(var_1.x, 1u)))) >> (min(vec2<u32>(var_1.x, 41586u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, var_1.x)) % vec2<u32>(32u)), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(89975u, 1u)))) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_1.x, var_1.x), var_1.x), vec2<u32>(75790u << (var_1.x % 32u), _wgslsmith_mult_u32(0u, var_1.x))), firstLeadingBit(firstTrailingBit(vec2<u32>(var_1.x, var_1.x))) >> (firstLeadingBit(vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    global2 = vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(6100i, countOneBits(global2.x)), 0i | _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a.x, -2147483647i, global2.x)), _wgslsmith_div_i32(u_input.a.x, -2147483647i)), vec3<i32>(max(-6905i, global2.x << (var_1.x % 32u)), u_input.a.x, _wgslsmith_mult_i32(-global2.x, -1i))), 0i);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -871f);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(min(u_input.a, _wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, u_input.b.x, 65764i), vec3<i32>(25617i, 0i, 0i)), vec3<i32>(global2.x, global2.x, global2.x))), vec3<i32>(u_input.a.x, -reverseBits(global2.x), -u_input.b.x)), u_input.a);
}

fn func_1(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = 24107u;
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_sub_i32(global2.x << (arg_0.b % 32u), abs(20576i)), arg_0.a.a, 2147483647i, ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-40162i, u_input.a.x), 3315i)), max(~(-vec4<i32>(-1i, -34787i, -52254i, u_input.a.x)) & _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, arg_0.a.a, -18797i, 27778i), -vec4<i32>(global2.x, u_input.b.x, 48557i, 0i)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, -1i, u_input.b.x) ^ vec4<i32>(47391i, global2.x, 42958i, -1i), vec4<i32>(0i, 0i, arg_0.a.a, 2147483647i)))));
    var var_2 = false;
    let var_3 = func_4(arg_0.c.a.x, arg_0.c, select(vec2<bool>(!(!arg_0.c.a.x), func_3(func_2(vec2<u32>(0u, 4294967295u), Struct_3(vec2<bool>(true, false))), !vec3<bool>(true, false, arg_0.c.a.x), ~vec4<i32>(u_input.a.x, 2147483647i, 72480i, var_1.x), arg_0.b)), vec2<bool>(true, true), reverseBits(arg_0.b) < ~arg_0.b));
    var var_4 = arg_0.c;
    return global1.xww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.b.x << (0u % 32u)), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), 10399i, -11903i), max((u_input.b ^ -u_input.b) & firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(global2.x, u_input.a.x, -7138i))), _wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), u_input.a), vec3<i32>(2137i, 0i << (1u % 32u), _wgslsmith_sub_i32(30455i, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.zww) * _wgslsmith_f_op_vec3_f32(-global1.zyx)) * global1.yyx) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(435f, 1000f, global1.x) * vec3<f32>(-148f, -608f, 144f)) * _wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_1(20328i), 46155u, Struct_3(vec2<bool>(false, true))))))), select(~(~vec4<u32>(4294967295u, 2672u, 32496u, 10070u)), vec4<u32>(4294967295u, firstLeadingBit(_wgslsmith_div_u32(4294967295u, 1u)), 1u, 16901u), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec3<bool>(true, true, false)), true, true, all(vec4<bool>(false, true, true, false))), true)));
}

