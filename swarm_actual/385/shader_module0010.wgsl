struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<Struct_2, 20>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1368f + arg_0.a.a.x)) < _wgslsmith_f_op_f32(f32(-1f) * -779f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a.x, global0.a.x, 556f, global0.a.x), vec4<f32>(arg_1.a.x, 841f, -336f, arg_1.a.x))))) + _wgslsmith_f_op_vec4_f32(-global0.a)), arg_0.a.b, 36761u, arg_1.d);
    var_0 = false;
    var var_2 = ~(-5479i);
    return max(u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.a.c, ~max(1u, global0.c)), ~(~0u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(global0.a, vec4<bool>(global0.b.x & true, arg_0.b.x, global0.b.x, false), _wgslsmith_mult_u32(~func_3(Struct_2(Struct_1(arg_0.a, global0.b, u_input.a, arg_0.d), 2147483647i, vec4<i32>(73506i, arg_0.d, -2147483647i, 60377i), vec3<i32>(global0.d, arg_0.d, -3627i)), Struct_1(vec4<f32>(-377f, -392f, arg_0.a.x, 1068f), vec4<bool>(global0.b.x, arg_0.b.x, global0.b.x, false), 0u, 3078i)), 1u), global0.d), arg_0.d, abs(reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, global0.d, arg_0.d, global0.d), vec4<i32>(global0.d, -15756i, -58067i, global0.d) & vec4<i32>(global0.d, arg_0.d, 20904i, -1i)))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(max(-vec3<i32>(-1843i, 1i, 35973i), vec3<i32>(60592i, 2147483647i, 1i)), vec3<i32>(select(2147483647i, arg_0.d, false), global0.d, global0.d), countOneBits(vec3<i32>(13871i, -2147483647i, arg_0.d)) >> (reverseBits(vec3<u32>(0u, global0.c, arg_0.c)) % vec3<u32>(32u))), vec3<i32>(i32(-1i) * -18142i, 9419i, 48251i)));
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.a.c, 65936u), select(0u, u_input.a >> (~var_0.a.c % 32u), !select(global0.b.x, global0.b.x, arg_0.b.x)))), 6u)];
    var var_1 = var_0;
    var var_2 = select(global0.b.wz, vec2<bool>(var_0.a.b.x, any(select(!vec4<bool>(var_1.a.b.x, false, var_0.a.b.x, false), vec4<bool>(var_0.a.b.x, global0.b.x, true, var_1.a.b.x), true))), arg_0.b.yy);
    var var_3 = abs(~(~_wgslsmith_mod_i32(arg_0.d, -27488i)) & arg_0.d);
    return _wgslsmith_dot_vec2_u32(((vec2<u32>(99363u, 0u) | vec2<u32>(15119u, u_input.a)) | vec2<u32>(~12450u, 1u)) | select(~vec2<u32>(1u, arg_0.c) ^ max(vec2<u32>(var_0.a.c, 1u), vec2<u32>(31241u, 4294967295u)), reverseBits(vec2<u32>(arg_0.c, 4294967295u)), vec2<bool>(var_2.x, var_1.a.b.x)), select(abs(~min(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 4294967295u))), countOneBits((vec2<u32>(22277u, var_1.a.c) & vec2<u32>(var_1.a.c, global0.c)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global0.c, 0u), vec2<u32>(var_1.a.c, 4294967295u)) % vec2<u32>(32u))), arg_0.b.zw));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - 266f), global0.a.x)))) + global0.a.yy);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(var_0.x - -149f), _wgslsmith_f_op_f32(select(var_0.x, -1000f, false))) + vec4<f32>(178f, var_0.x, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(-337f, 1475f))))), vec4<bool>(select(select(true, any(vec2<bool>(global0.b.x, false)), true), !global0.b.x, false), -19245i <= _wgslsmith_sub_i32(global0.d, 9587i), any(select(!global0.b, !global0.b, vec4<bool>(global0.b.x, global0.b.x, false, false))), all(select(vec4<bool>(true, false, global0.b.x, global0.b.x), vec4<bool>(false, false, global0.b.x, true), !vec4<bool>(true, false, true, global0.b.x)))), ~(~(~38587u)) >> (_wgslsmith_mult_u32(4294967295u, ~(~global0.c)) % 32u), 1i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), !global0.b, abs(func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(24044u, var_1.c, u_input.a), vec3<u32>(4294967295u, global0.c, global0.c)), vec3<u32>(global0.c, 49279u, global0.c)), 6u)])), global0.d);
    let var_3 = global2[_wgslsmith_index_u32(countOneBits(firstTrailingBit(~21000u)), 20u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - var_3.a.a)), select(vec4<bool>(false, !(true || global0.b.x), 954f < _wgslsmith_f_op_f32(-var_1.a.x), all(select(global0.b, global0.b, global0.b.x))), var_1.b, select(select(global0.b, !vec4<bool>(var_1.b.x, false, var_2.b.x, true), var_2.b.x), var_1.b, select(var_3.a.b, !vec4<bool>(false, true, true, global0.b.x), var_2.b.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(max(var_1.c, u_input.a), ~4294967295u, var_3.a.c), ~firstLeadingBit(vec3<u32>(var_1.c, var_1.c, var_3.a.c) | vec3<u32>(var_1.c, var_1.c, global0.c))), ~0i);
    return -var_3.c.wwz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~(~0u), 20u)];
    global1 = array<Struct_1, 6>();
    let var_1 = var_0.a.b;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.a.x)), var_0.a.a.x, !var_1.x)), var_0.a.a.x)), var_0.a.b, 42939u, global0.d);
    global2 = array<Struct_2, 20>();
    var var_2 = -var_0.d & vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.c.zwy, vec3<i32>(0i, global0.d, 20572i)) ^ (global0.d & var_0.d.x), var_0.a.d), -1i, reverseBits(_wgslsmith_mult_i32(-2147483647i, var_0.a.d)));
    var var_3 = _wgslsmith_div_i32(var_2.x, reverseBits(_wgslsmith_dot_vec3_i32(select(abs(vec3<i32>(var_0.c.x, var_0.d.x, var_0.c.x)), var_0.d, vec3<bool>(var_1.x, true, true)), func_1())));
    global0 = global1[_wgslsmith_index_u32(1u, 6u)];
    let var_4 = Struct_2(var_0.a, select(-2147483647i, abs(i32(-1i) * -var_0.a.d), any(select(!global0.b.xz, var_0.a.b.zx, var_0.a.b.yw))), reverseBits(-(~vec4<i32>(global0.d, global0.d, var_2.x, 5733i))), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(42337u, ~(var_4.a.c & _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.a.c, global0.c), func_2(var_4.a))), ~firstLeadingBit(firstLeadingBit(vec4<u32>(var_0.a.c, 95640u, 0u, 0u))) >> (vec4<u32>(var_4.a.c >> (_wgslsmith_clamp_u32(global0.c, 4294967295u, global0.c) % 32u), global0.c, ~(~var_0.a.c), _wgslsmith_clamp_u32(20634u, ~global0.c, ~4165u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.a.a.x, -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_4.a.a.x)), global0.a.x))));
}

