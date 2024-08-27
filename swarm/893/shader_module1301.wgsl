struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec4<i32>, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(-2147483647i, 20050i << (arg_2.x % 32u)), ~u_input.e.x), global0.b);
    global0 = Struct_1(-21592i ^ ~var_0.a, false);
    var var_1 = u_input.a;
    global0 = Struct_1(abs(max(_wgslsmith_sub_i32(-24174i, -36615i), arg_1 ^ max(u_input.e.x, -2147483647i))), global1.x);
    var var_2 = arg_0;
    return var_0;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(arg_2.a, !func_1(u_input.d.x, min(arg_2.a, _wgslsmith_sub_i32(arg_2.a, -7941i)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, 4294967295u), ~vec4<u32>(arg_0, u_input.d.x, 30133u, arg_0))).b);
    global0 = var_0;
    global0 = Struct_1(~(max(arg_1.a, ~1451i) << (4294967295u % 32u)), arg_3.b);
    let var_1 = Struct_1(-_wgslsmith_clamp_i32(arg_1.a, _wgslsmith_dot_vec2_i32(max(u_input.b.yw, u_input.e.xy), u_input.e.yx), _wgslsmith_mult_i32(var_0.a, ~arg_3.a)), select(all(select(vec3<bool>(false, var_0.b, false), vec3<bool>(global0.b, true, arg_1.b), vec3<bool>(var_0.b, true, arg_1.b))), true, false));
    global2 = array<vec4<i32>, 26>();
    return !vec3<bool>(!arg_1.b, !all(vec4<bool>(var_0.b, global1.x, true, true)), true);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = arg_1;
    var var_1 = select(vec3<bool>(global1.x, !any(!vec3<bool>(global1.x, var_0.b, false)), _wgslsmith_add_i32(countOneBits(-2386i), ~2147483647i) == _wgslsmith_sub_i32(-u_input.e.x, -11942i)), !(!select(select(vec3<bool>(arg_1.b, var_0.b, global0.b), vec3<bool>(arg_2.b, arg_1.b, false), global0.b), vec3<bool>(global0.b, global0.b, global1.x), !vec3<bool>(global0.b, true, true))), vec3<bool>(any(func_3(u_input.c, Struct_1(5925i, global0.b), arg_1, Struct_1(arg_1.a, global0.b))), any(vec3<bool>(any(vec3<bool>(true, true, false)), !arg_2.b, global1.x == arg_1.b)), func_3(1u, arg_1, arg_2, arg_2).x & any(func_3(1u, Struct_1(-34576i, false), Struct_1(-1i, global1.x), Struct_1(1i, var_0.b)))));
    var_1 = vec3<bool>(global0.b, !all(var_1.zx), all(func_3(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_clamp_u32(22585u, 0u, 0u)), Struct_1(func_1(u_input.d.x, arg_2.a, vec4<u32>(u_input.d.x, u_input.a.x, u_input.c, u_input.a.x)).a, var_1.x), Struct_1(~41483i, !global0.b), arg_2)));
    let var_2 = _wgslsmith_clamp_u32(~(~(~0u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(u_input.c, u_input.d.x, u_input.d.x))), vec3<u32>(u_input.c, u_input.c, 47360u) | vec3<u32>(u_input.d.x, 1u, u_input.a.x)), select(87151u, ~(~11854u), true)) & ~(~4294967295u);
    var_1 = func_3(~(~u_input.d.x), func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~32772u), vec2<u32>(max(var_2, 1u), var_2 & u_input.c)), global0.a, select(_wgslsmith_clamp_vec4_u32(vec4<u32>(16723u, var_2, 6975u, var_2), select(vec4<u32>(4294967295u, var_2, 0u, 1u), vec4<u32>(u_input.d.x, var_2, 4294967295u, 40712u), vec4<bool>(global1.x, global1.x, arg_1.b, global0.b)), vec4<u32>(1u, u_input.a.x, 66110u, 46837u) & vec4<u32>(45110u, 0u, 4294967295u, 44858u)), ~vec4<u32>(25623u, 66532u, var_2, u_input.d.x), vec4<bool>(any(vec2<bool>(false, var_1.x)), global0.a >= -2147483647i, var_1.x, var_0.b))), func_1(0u, firstLeadingBit(min(var_0.a, -975i)), vec4<u32>(max(~var_2, max(u_input.d.x, 1u)), _wgslsmith_mod_u32(u_input.c, abs(4294967295u)), firstLeadingBit(~4294967295u), u_input.a.x)), func_1(66093u, global0.a, vec4<u32>(107224u, var_2, 10378u & var_2, abs(4294967295u)) >> (firstTrailingBit(vec4<u32>(26891u, 69683u, var_2, 1u)) % vec4<u32>(32u))));
    return min(u_input.d.x, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec3<u32>(~(~1u), u_input.c, ~4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 41697u, 1u, 0u), vec4<u32>(51726u, 0u, u_input.a.x, 17623u)) % 32u)), max(vec3<u32>(u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.c, 1u)), firstTrailingBit(~7372u)), vec3<u32>(func_2(-1533f, func_1(13876u, 32785i, vec4<u32>(4294967295u, 15130u, 41061u, 68239u)), func_1(5717u, global0.a, vec4<u32>(19839u, 0u, 4294967295u, 33378u))), max(0u, u_input.a.x) | ~u_input.a.x, ~(~u_input.a.x))), func_3(firstTrailingBit(~u_input.c), Struct_1(select(reverseBits(-7455i), 21076i, !global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-65741i, 31516i, u_input.b.x), u_input.e) <= ~(-12664i)), Struct_1(~global0.a, global0.b), Struct_1(global0.a, global1.x)).x);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f + -1317f)))), -627f, 340f);
    var var_2 = func_1(countOneBits(var_0.x), select(_wgslsmith_mult_i32(max(i32(-1i) * -2147483647i, -u_input.e.x), global0.a), u_input.e.x, func_1(0u, 0i, ~_wgslsmith_mod_vec4_u32(vec4<u32>(62631u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(1u, var_0.x, 0u, var_0.x))).b), _wgslsmith_clamp_vec4_u32(vec4<u32>(55383u, 37248u, u_input.a.x | 4294967295u, u_input.d.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(12527u, u_input.c, var_0.x, u_input.a.x), vec4<u32>(u_input.a.x, var_0.x, 4294967295u, u_input.a.x)), firstTrailingBit(abs(vec4<u32>(9250u, 0u, 0u, 4294967295u)))) & firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(u_input.d.x, 4294967295u), _wgslsmith_sub_u32(u_input.d.x, 77562u), select(u_input.c, 4294967295u, global1.x), var_0.x)));
    let var_3 = any(!(!select(vec2<bool>(true, false), func_3(31949u, Struct_1(var_2.a, global1.x), Struct_1(global0.a, true), Struct_1(-48389i, true)).zx, !vec2<bool>(true, global1.x))));
    var var_4 = !all(!(!(!vec2<bool>(var_2.b, false))));
    global2 = array<vec4<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1017f), _wgslsmith_div_f32(-852f, 698f), true))), var_1.x, var_1.x, -1759f), var_1.zy, ~2147483647i, var_1.x);
}

