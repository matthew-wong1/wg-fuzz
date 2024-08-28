struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(156f, -1000f);

var<private> global1: Struct_2 = Struct_2(Struct_1(627f, vec2<u32>(31180u, 54129u)), vec3<u32>(122318u, 1u, 1u), vec4<i32>(2147483647i, 9268i, 5359i, 0i));

var<private> global2: Struct_3 = Struct_3(true, vec4<f32>(559f, -240f, -539f, -1030f));

var<private> global3: array<Struct_3, 20>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-890f)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(38652u, arg_0.b.x), arg_0.b), global1.b.zz)), ~arg_1, ~vec4<i32>(-firstTrailingBit(global1.c.x), max(-78898i, countOneBits(global1.c.x)), global1.c.x, global1.c.x));
    global0 = _wgslsmith_f_op_vec2_f32(round(global2.b.xw));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1642f - -775f)), global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -875f), -305f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.a, 1000f, global2.b.x, arg_0.a), _wgslsmith_f_op_vec4_f32(-global2.b))) - global2.b)));
    let var_1 = global1.a;
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(abs(vec4<i32>(38638i, 34979i, global1.c.x, -2147483647i)), countOneBits(global1.c), !(!vec4<bool>(global2.a, true, global2.a, global2.a))), global1.c), -select(vec4<i32>(global1.c.x, -31949i, -1190i, 1i) >> ((vec4<u32>(14732u, 29107u, 8542u, 35482u) ^ vec4<u32>(0u, arg_1.x, 37338u, var_1.b.x)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(2147483647i, global1.c.x, global1.c.x, 1i)) | (global1.c << (vec4<u32>(6476u, 89142u, 42992u, arg_1.x) % vec4<u32>(32u))), true));
    return global2.a;
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    global3 = array<Struct_3, 20>();
    global2 = Struct_3(all(select(vec4<bool>(false, arg_0.a, arg_0.a & false, true), vec4<bool>(true, func_3(Struct_1(-1105f, u_input.a), vec3<u32>(global1.a.b.x, 31776u, u_input.a.x)), func_3(Struct_1(2419f, vec2<u32>(u_input.a.x, global1.b.x)), global1.b), false & global2.a), any(!vec4<bool>(arg_0.a, arg_0.a, global2.a, arg_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-607f, global1.a.a, -298f, 1324f))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, 1479f)), 1492f, 1000f))));
    var var_0 = Struct_2(global1.a, vec3<u32>(global1.a.b.x, ~abs(1u), ~u_input.a.x), -global1.c);
    global2 = global3[_wgslsmith_index_u32(global1.a.b.x, 20u)];
    var var_1 = abs(~(-firstTrailingBit(vec4<i32>(global1.c.x, var_0.c.x, 2147483647i, 27586i))));
    return global1.b;
}

fn func_1() -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(min(global1.b, max(global1.b, vec3<u32>(u_input.a.x, u_input.a.x, global1.a.b.x)) | _wgslsmith_mod_vec3_u32(global1.b, vec3<u32>(u_input.a.x, u_input.a.x, global1.b.x))), vec3<u32>(~global1.a.b.x, 1u, _wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(u_input.a.x, 70760u, 34129u))) | abs(global1.b))), 20u)];
    var var_1 = Struct_2(global1.a, func_2(Struct_3(var_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global1.a.a, var_0.b.x, -1233f), _wgslsmith_f_op_vec4_f32(-global2.b)))), vec4<i32>(global1.c.x, firstTrailingBit(_wgslsmith_mult_i32(~global1.c.x, _wgslsmith_dot_vec3_i32(global1.c.xxw, global1.c.xwz))), global1.c.x, global1.c.x));
    var var_2 = _wgslsmith_div_i32(-18045i, -2147483647i);
    var var_3 = global1.a;
    var_3 = var_1.a;
    return 2147483647i;
}

fn func_4(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = global1.c.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.b.wy), _wgslsmith_f_op_vec2_f32(-global2.b.zx)))), global2.b.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global1.a.a * global2.b.x), _wgslsmith_f_op_f32(trunc(global2.b.x))), vec2<f32>(_wgslsmith_f_op_f32(sign(-710f)), global0.x)))));
    let var_1 = -2147483647i;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(1u), select(0u, min(~(52470u & global1.b.x), ~_wgslsmith_add_u32(44866u, global1.b.x)), all(!select(vec2<bool>(false, global2.a), vec2<bool>(false, global2.a), global2.a))), func_2(Struct_3(any(!vec4<bool>(global2.a, global2.a, true, global2.a)), global2.b)).x), 20u)];
    let var_3 = select(select(!(!select(vec3<bool>(var_2.a, var_2.a, global2.a), vec3<bool>(false, false, false), vec3<bool>(var_2.a, global2.a, global2.a))), select(!select(vec3<bool>(var_2.a, global2.a, true), vec3<bool>(global2.a, true, false), global2.a), !(!vec3<bool>(global2.a, true, global2.a)), true), !select(!vec3<bool>(false, global2.a, false), vec3<bool>(false, global2.a, true), 119f != var_2.b.x)), vec3<bool>(-(~arg_0.x) <= arg_0.x, var_2.a || (_wgslsmith_f_op_f32(ceil(var_2.b.x)) <= _wgslsmith_f_op_f32(round(global1.a.a))), true), vec3<bool>(!all(vec3<bool>(var_2.a, true, true)), select(all(vec3<bool>(true, true, global2.a)), true, true) | ((global1.a.b.x < global1.a.b.x) && global2.a), var_2.a));
    return StorageBuffer(vec3<f32>(global0.x, -333f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + _wgslsmith_f_op_f32(floor(-2467f)))))), _wgslsmith_mult_vec2_i32(-global1.c.ww, max(vec2<i32>(-var_1, 68089i), vec2<i32>(i32(-1i) * -1001i, ~(-10380i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = func_4(vec3<i32>(-(~global1.c.x), _wgslsmith_mult_i32(-2509i, global1.c.x), _wgslsmith_mult_i32(func_1(), _wgslsmith_clamp_i32(global1.c.x, global1.c.x, global1.c.x))) & vec3<i32>(25561i, -42750i, _wgslsmith_div_i32(-4660i, _wgslsmith_dot_vec3_i32(global1.c.ywx, vec3<i32>(global1.c.x, 1i, -41344i)))));
}

