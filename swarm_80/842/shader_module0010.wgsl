struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    global0 = Struct_4(global0.a, global0.d.yyx, global0.c, global0.d >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c, 73966u, global0.c, global0.c) ^ (vec4<u32>(global0.c, 4294967295u, 1u, global0.c) & vec4<u32>(0u, 0u, global0.c, 64233u)), ~(~vec4<u32>(global0.c, 1u, global0.c, global0.c))) % vec4<u32>(32u)), false);
    let var_0 = global0.a.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-906f))), _wgslsmith_f_op_f32(max(-430f, -217f)), _wgslsmith_f_op_f32(-656f - -1494f)))));
    var var_2 = _wgslsmith_f_op_f32(floor(1494f));
    global1 = -38403i;
    return ~_wgslsmith_mult_u32(global0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 33357u, global0.c, 0u) | vec4<u32>(global0.c, global0.c, global0.c, global0.c), vec4<u32>(~global0.c, global0.c, 23481u, select(global0.c, global0.c, false))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1996f, -1040f, global0.a.a, -195f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0.a.a, 613f, -356f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, 135f, 1415f, global0.a.a)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-172f, 111f, 858f, 1000f) + vec4<f32>(global0.a.a, global0.a.a, 457f, 725f)))))))));
    var var_1 = arg_1.zzx;
    let var_2 = Struct_2(~(-1i), Struct_1(select(arg_1.xzw, arg_1.xyw, !select(vec3<bool>(true, true, global0.e), vec3<bool>(true, true, false), true)), vec4<i32>(global0.b.x, u_input.a.x, _wgslsmith_sub_i32(countOneBits(u_input.b), -2147483647i), _wgslsmith_mod_i32(~0i, 6550i)), _wgslsmith_clamp_vec2_i32(max(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-20782i, global0.d.x)), vec2<i32>(global0.b.x, u_input.a.x)), -global0.b.yx, vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.a.x), u_input.a.x))), _wgslsmith_mult_u32(global0.c << (~_wgslsmith_add_u32(global0.c, global0.c) % 32u), ~global0.c), Struct_1(arg_1.zwz, vec4<i32>(-_wgslsmith_mult_i32(2147483647i, u_input.a.x), countOneBits(-15143i), _wgslsmith_dot_vec2_i32(u_input.a ^ vec2<i32>(global0.b.x, global0.d.x), firstLeadingBit(global0.d.yy)), -1i), abs(vec2<i32>(-24790i, u_input.b) << (firstLeadingBit(vec2<u32>(1u, global0.c)) % vec2<u32>(32u)))));
    let var_3 = 24625i;
    global2 = !var_1.yy;
    return 0i;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_4 {
    global0 = Struct_4(Struct_3(1000f), ~(~select(arg_2.xzx, _wgslsmith_clamp_vec3_i32(vec3<i32>(-31323i, 1i, 2147483647i), vec3<i32>(arg_2.x, 0i, u_input.a.x), global0.b), !vec3<bool>(false, true, global2.x))), global0.c, max(global0.d, arg_2) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global0.c, 0u, global0.c, 16094u)), ~vec4<u32>(global0.c, global0.c, global0.c, 0u) >> (vec4<u32>(global0.c, 1u, global0.c, 35812u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.c, 0u, global0.c, global0.c)), ~vec4<u32>(87869u, 1u, global0.c, 5134u))) % vec4<u32>(32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(func_2(), global0.c), select(~vec2<u32>(0u, global0.c), vec2<u32>(global0.c, 1u), any(vec2<bool>(true, true)))) != 4294967295u);
    var var_0 = !(!vec2<bool>(select(45634u < global0.c, false, true), all(vec2<bool>(arg_0, global2.x))));
    let var_1 = Struct_4(global0.a, ~global0.b, 1u, vec4<i32>(global0.d.x, reverseBits(func_3(global0.a.a, vec4<bool>(var_0.x, var_0.x, false, true))), _wgslsmith_sub_i32(1i, 2147483647i), 1i), true);
    var var_2 = Struct_1(vec3<bool>(!global0.e, var_0.x, _wgslsmith_f_op_f32(select(global0.a.a, _wgslsmith_f_op_f32(floor(global0.a.a)), !global0.e)) <= global0.a.a), arg_2, vec2<i32>(arg_2.x, arg_1));
    var var_3 = 1030f;
    return Struct_4(global0.a, -var_1.b, global0.c, vec4<i32>(~_wgslsmith_div_i32(-1i, ~2147483647i), 9596i, -select(-15936i, arg_1, true), ~(-6456i)), !(arg_0 != !any(vec3<bool>(false, var_2.a.x, var_1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    global0 = func_1(true, u_input.a.x & -reverseBits(firstLeadingBit(-2147483647i)), global0.d);
    global1 = _wgslsmith_sub_i32(0i, ~func_3(_wgslsmith_f_op_f32(func_1(true, 0i, global0.d).a.a + _wgslsmith_f_op_f32(max(2774f, -992f))), !(!vec4<bool>(global0.e, true, global2.x, global2.x))));
    var var_1 = global0.b.x;
    var var_2 = 515f;
    let var_3 = _wgslsmith_div_u32(min(1945u, 0u) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.c, 110u, 0u) | vec4<u32>(13817u, 63720u, global0.c, global0.c), select(vec4<u32>(4294967295u, 16863u, global0.c, 4294967295u), vec4<u32>(global0.c, 35427u, 26059u, 1u), false)), global0.c), ~(_wgslsmith_sub_u32(global0.c ^ global0.c, ~global0.c) ^ 1u));
    var var_4 = ~(1i & _wgslsmith_dot_vec3_i32(firstLeadingBit(global0.b), vec3<i32>(u_input.b, u_input.a.x, u_input.b))) | _wgslsmith_dot_vec2_i32(global0.b.yx ^ -u_input.a, global0.b.xz);
    let var_5 = u_input.a.x;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(floor(-933f))))), global0.a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec3<u32>(var_3, var_3, 4294967295u), max(vec3<u32>(48148u, var_3, var_3), vec3<u32>(4592u, 4294967295u, 7070u)), global0.e) | abs(select(vec3<u32>(4294967295u, var_3, 0u), vec3<u32>(1u, 0u, 64789u), vec3<bool>(global0.e, global2.x, true)))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.a))), 1f)), var_0.a), var_3, firstTrailingBit(~(~select(vec4<u32>(global0.c, 18085u, var_3, var_3), vec4<u32>(87882u, var_3, global0.c, 27969u), vec4<bool>(global0.e, false, false, false)))));
}

