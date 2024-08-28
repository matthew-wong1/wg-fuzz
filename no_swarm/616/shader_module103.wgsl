struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 31> = array<f32, 31>(-852f, 1009f, -1951f, 1121f, -1432f, -149f, 922f, 572f, 206f, 931f, 453f, 1000f, -1079f, 1231f, 1608f, -1115f, -1005f, 1000f, 724f, 261f, 190f, 869f, 1714f, 957f, 511f, 1062f, 792f, 387f, 447f, 912f, 368f);

var<private> global2: Struct_2 = Struct_2(-1i, vec4<i32>(1104i, -39751i, 2147483647i, 11395i), vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec4<f32>(1852f, -1948f, 1000f, 750f), vec2<f32>(-1089f, -634f), vec2<f32>(479f, -443f)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    global1 = array<f32, 31>();
    return _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(65752u, _wgslsmith_dot_vec3_u32(global2.c, global2.c))), vec2<u32>(firstTrailingBit(~0u), u_input.a), global2.c.yy);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> vec3<bool> {
    let var_0 = Struct_2(-(~(~firstLeadingBit(-1i))), global2.b | reverseBits(firstTrailingBit(global2.b)), vec3<u32>(firstLeadingBit(55348u), ~4294967295u << (~firstLeadingBit(global2.c.x) % 32u), select(firstTrailingBit(96444u), global2.c.x, !arg_1)), arg_0);
    let var_1 = vec3<i32>(u_input.e.x, -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global2.a, 32026i, 31224i, var_0.b.x)) >> (~vec4<u32>(106735u, global2.c.x, var_0.c.x, 0u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, 2147483647i), max(global2.a, 0i), -2147483647i, var_0.b.x & -46128i)), 2147483647i);
    var var_2 = var_0;
    global2 = Struct_2(_wgslsmith_mod_i32(u_input.c, max(-2147483647i, -2147483647i << (~global2.c.x % 32u))), ~vec4<i32>(select(12661i, ~var_1.x, true), (var_2.b.x << (47441u % 32u)) & -var_1.x, _wgslsmith_dot_vec4_i32(global2.b, -vec4<i32>(global2.b.x, u_input.c, 8335i, -2147483647i)), reverseBits(0i)), var_2.c, arg_0);
    let var_3 = global2.a;
    return vec3<bool>(arg_1, !(!all(vec4<bool>(arg_1, true, arg_1, false))), arg_1);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> vec4<u32> {
    let var_0 = ~(~(~global2.a));
    global2 = Struct_2(1i, vec4<i32>(_wgslsmith_div_i32(var_0, ~(-1i)), -44614i, ~_wgslsmith_sub_i32(~u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, 2147483647i), global2.b.yy)), abs(u_input.e.x) << (arg_1 % 32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, ~31089u), ~vec3<u32>(4294967295u, global2.c.x, 57442u) >> (vec3<u32>(arg_0.x, global2.c.x, arg_0.x) % vec3<u32>(32u))) & ~vec3<u32>(_wgslsmith_mult_u32(arg_1, 0u), ~40874u, 1u), global2.d);
    let var_1 = !(!func_4(global2.d, 1u > ~arg_0.x, func_3()));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d.b)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24817u, 31u)]) - global2.d.a.x) - -168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1140f - global1[_wgslsmith_index_u32(116359u, 31u)]) + -761f))));
    let var_3 = global2.d;
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.d.x, 1u, 34332u), vec4<u32>(global2.c.x, arg_1.c.x, 4294967295u, 37526u)), vec4<u32>(1u, u_input.d.x, u_input.d.x, global2.c.x) ^ vec4<u32>(1u, arg_1.c.x, u_input.a, 21138u)), vec4<u32>(global2.c.x, u_input.a, ~24050u, u_input.d.x), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 1u, global2.c.x), vec4<u32>(global2.c.x, arg_1.c.x, u_input.a, 4294967295u)), ~vec4<u32>(global2.c.x, arg_1.c.x, global2.c.x, global2.c.x))) & select(func_2(~firstLeadingBit(vec4<u32>(1u, arg_1.c.x, arg_1.c.x, 15889u)), 1u), (vec4<u32>(0u, 1u, u_input.a, 25560u) >> (~vec4<u32>(global2.c.x, global2.c.x, 4294967295u, 276u) % vec4<u32>(32u))) << (vec4<u32>(~global2.c.x, 20444u, ~global2.c.x, ~39739u) % vec4<u32>(32u)), !vec4<bool>(true, true, false, all(vec2<bool>(arg_0, false))));
    let var_1 = max(u_input.e.x | -21751i, -2147483647i);
    var var_2 = Struct_3(!(!select(true, true, false)) & (abs(0u) >= max(_wgslsmith_mod_u32(4294967295u, arg_1.c.x), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f - 487f)) + arg_1.d.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f) + _wgslsmith_f_op_f32(-arg_1.d.a.x)))))));
    let var_3 = abs(abs(_wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec2_u32(~arg_1.c.xx, select(arg_1.c.zy, vec2<u32>(arg_1.c.x, 0u), arg_0)))));
    global1 = array<f32, 31>();
    return vec2<bool>(select(!(!any(vec4<bool>(arg_0, arg_0, true, arg_0))), func_4(global2.d, !all(vec2<bool>(var_2.a, true)), select(abs(vec2<u32>(51515u, 86329u)), vec2<u32>(4294967295u, 1u), global2.a >= var_1)).x, all(vec2<bool>(true, true))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(select(global1[_wgslsmith_index_u32(23162u, 31u)] < _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.c.x, 31u)]) == 1068f, true), true), select(select(select(vec2<bool>(false, false), func_1(true, Struct_2(2147483647i, global2.b, vec3<u32>(u_input.d.x, 4294967295u, 29235u), global2.d)), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), func_1(false, Struct_2(u_input.e.x, global2.b, global2.c, global2.d)), vec2<bool>(true, true))), vec2<bool>(true, true), func_4(global2.d, !any(vec2<bool>(true, false)), ~(u_input.d | global2.c.xy)).zy));
    global0 = false;
    global2 = Struct_2(firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global2.b.ywz, global2.b.xzy), 46088i), -1i & -u_input.e.x, ~u_input.c)), _wgslsmith_div_vec4_i32(reverseBits(global2.b), firstLeadingBit(-firstLeadingBit(vec4<i32>(-5488i, u_input.e.x, global2.a, 2147483647i)))), ~min(~vec3<u32>(31214u, 31013u, 4294967295u), abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, u_input.d.x), vec3<u32>(0u, u_input.d.x, u_input.a)))), global2.d);
    var var_1 = global2.c << (vec3<u32>(_wgslsmith_sub_u32(global2.c.x, _wgslsmith_sub_u32(1u, u_input.a)), func_3().x, u_input.d.x) % vec3<u32>(32u));
    var var_2 = 60904u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_i32(global2.b, _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.c, -15747i, global2.a)), global2.b), ~global2.b), _wgslsmith_clamp_u32(4294967295u, 59475u, _wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(u_input.d.x, _wgslsmith_sub_u32(1u, global2.c.x)))), vec3<u32>(global2.c.x, _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 43635u, var_1.x, 0u), vec4<u32>(0u, var_1.x, 32168u, 4294967295u)))), 58696u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.a.x, global2.d.b.x, global1[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(13413u, 31u)] * global2.d.a.x)) - _wgslsmith_f_op_vec4_f32(-global2.d.a)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, global1[_wgslsmith_index_u32(var_1.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(var_1.x, 31u)])), vec4<f32>(global1[_wgslsmith_index_u32(1u, 31u)], 1000f, -227f, global2.d.a.x)))))), 106f);
}

