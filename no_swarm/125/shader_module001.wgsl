struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec4<u32> {
    global2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1.x, global2.c.a.x, true)))), _wgslsmith_f_op_f32(ceil(arg_1.x)), -2186f), ~vec4<u32>(_wgslsmith_sub_u32(~4972u, ~global1.x), 20740u, 39059u, reverseBits(~u_input.a)), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c.c.yx)), global2.c.c.wz), _wgslsmith_f_op_f32(round(916f)), vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1391f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.c.c.x)) * _wgslsmith_f_op_f32(step(176f, global2.a.x))), arg_1.x, 1118f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1324f, global2.a.x)))), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d, global2.d.x) ^ 83523i, -21150i), -1i, _wgslsmith_div_i32(2147483647i, ~(-global2.e))), -8646i);
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, -154f, 201f))))), vec4<u32>(23784u, 47051u, abs(arg_0.a.x), global2.b.x), global2.c, min(_wgslsmith_mult_vec4_i32(global2.d, vec4<i32>(u_input.d, 2147483647i, -1i, reverseBits(u_input.d))), _wgslsmith_clamp_vec4_i32(global2.d, vec4<i32>(global2.d.x, ~(-2147483647i), global2.e, -u_input.d), reverseBits(global2.d))), _wgslsmith_add_i32(1i ^ min(u_input.d, -3683i), -1i));
    var var_1 = global2.a.x;
    global2 = var_0;
    var var_2 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.x, global1.x, 0u), var_0.b.x), ~firstTrailingBit(10083u))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1720f, -1326f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, global2.c.d) + 1209f)), _wgslsmith_f_op_f32(-global2.a.x), global2.c.c, -1613f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.c.x, _wgslsmith_f_op_f32(arg_1.x - -1151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, -1344f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 2208f, 1227f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global2.c.c.ywy, var_0.a, false)), global2.c.c.yxz)))), Struct_2(var_0.a.yx, _wgslsmith_f_op_f32(-var_0.a.x), var_0.c.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1863f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), false))), var_0);
    return vec4<u32>(min(_wgslsmith_mult_u32(max(arg_0.a.x, 4294967295u), 71389u), ~(~(global2.b.x >> (var_0.b.x % 32u)))), ~0u, 32431u, _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(77682u, arg_0.a.x, global2.b.x)), vec3<u32>(~var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 0u, 0u), vec3<u32>(u_input.a, var_2.e.b.x, global1.x)), ~67172u)));
}

fn func_2() -> i32 {
    global1 = vec3<u32>(firstLeadingBit(4294967295u), 91518u, 1u);
    global2 = Struct_3(global2.a, ~func_3(Struct_1(u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c.c.zyy) * _wgslsmith_f_op_vec3_f32(global2.a - global2.a))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c.a.x, global2.c.b), vec2<f32>(-1658f, -1474f), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(834f, -1243f) + global2.a.yz), vec2<f32>(global2.c.a.x, global2.c.d)))), global2.a.x, global2.c.c, -710f), ~global2.d, -_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, ~(-20724i)), firstLeadingBit(18804i >> (u_input.a % 32u))));
    let var_0 = select(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), select(vec2<bool>(select(true, true, false), true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), false)), select(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec4<bool>(false, false, true, true))), vec2<bool>(false, -2147483647i == (global2.d.x & global2.d.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(!select(true, true, true), any(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true)), true));
    let var_1 = _wgslsmith_add_i32(u_input.d, i32(-1i) * -global2.d.x);
    global2 = Struct_3(global2.c.c.yxx, abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x & u_input.a, 11052u << (0u % 32u), global2.b.x, global2.b.x), ~global2.b ^ (vec4<u32>(global2.b.x, global2.b.x, 15894u, 39419u) >> (global2.b % vec4<u32>(32u))))), global0[_wgslsmith_index_u32(global1.x, 8u)], _wgslsmith_mult_vec4_i32(global2.d, vec4<i32>(var_1, -57548i, 0i, u_input.d)), _wgslsmith_clamp_i32(abs(u_input.d) << (max(~18840u, 17120u) % 32u), 63678i, -select(var_1, firstLeadingBit(19684i), true)));
    return u_input.d;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(~(~u_input.c));
    let var_2 = select(-1i, u_input.d, false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-641f, _wgslsmith_f_op_f32(-arg_0.b), false)));
    global2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(global2.a)), global2.b, global2.c, _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(0i, u_input.d, -u_input.d, ~u_input.d)), global2.d), func_2());
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = firstLeadingBit(7698i);
    let var_2 = firstTrailingBit((u_input.b | global2.b.x) & ~func_1(global0[_wgslsmith_index_u32(~global2.b.x, 8u)]));
    var_1 = 27847i;
    let var_3 = global2.d.x;
    var var_4 = 0i;
    var var_5 = vec2<bool>(true, any(vec3<bool>(var_0, var_0, true)));
    var_1 = select(~(-func_2()), 72069i, !any(!vec4<bool>(var_5.x, true, var_0, var_5.x)));
    var_4 = global2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b);
}

