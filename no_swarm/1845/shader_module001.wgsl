struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global2: vec2<i32> = vec2<i32>(2131i, 54539i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global2 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, -global2.x), global1.a), 27172i << (_wgslsmith_add_u32(1u, ~4294967295u) % 32u)), global2.x >> (0u % 32u));
    let var_0 = ~(~vec3<u32>((17819u >> (1u % 32u)) >> (1u % 32u), 1u, 4294967295u));
    global1 = Struct_1(-(-select(vec2<i32>(global1.a.x, global1.a.x), vec2<i32>(global1.a.x, global2.x), false) & global1.a));
    let var_1 = _wgslsmith_dot_vec2_i32(global1.a, firstTrailingBit(firstTrailingBit(vec2<i32>(2147483647i, -64125i)))) ^ _wgslsmith_dot_vec2_i32(firstTrailingBit(~global1.a >> (countOneBits(var_0.yy) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(countOneBits(select(vec2<i32>(u_input.a, global1.a.x), global1.a, true)), global1.a, vec2<i32>(u_input.a, u_input.a)));
    let var_2 = Struct_1(vec2<i32>(countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(-59337i, global2.x, -43412i), vec3<i32>(-2147483647i, u_input.a, global2.x))), _wgslsmith_mult_i32(global1.a.x, (global1.a.x << (var_0.x % 32u)) | (i32(-1i) * -1i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(-global1.a);
    let var_1 = abs(var_0.a);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -792f), global0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -375f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * global0.x), 214f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -2082f, -340f) + vec4<f32>(global0.x, 984f, 576f, -1000f)) - vec4<f32>(-1291f, global0.x, global0.x, global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, -1058f, global0.x, 1175f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, _wgslsmith_f_op_f32(-global0.x), -1186f, global0.x))));
    global2 = vec2<i32>(-19834i, ~(~(-1i)));
    return Struct_1(max(vec2<i32>(var_0.a.x, min(abs(global2.x), -10094i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), -vec2<i32>(var_1.x, u_input.a))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32) -> vec2<i32> {
    let var_0 = Struct_1(~global1.a);
    var var_1 = reverseBits(-vec3<i32>(-67698i, ~(-u_input.a), u_input.a));
    var var_2 = arg_1.x;
    let var_3 = select(reverseBits(_wgslsmith_add_u32(~51698u, 0u)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 39990u, 31767u, 35136u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 20787u, 4294967295u, 24895u), vec4<u32>(4294967295u, 4294967295u, 17934u, 4294967295u))) & firstTrailingBit(1u)), 1u, any(vec3<bool>(false, true, !(arg_2 == global2.x))));
    let var_4 = func_2(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))));
    return vec2<i32>(select(global2.x, abs(-2147483647i >> (var_3 % 32u)), false), i32(-1i) * -arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(-min(-9251i, -2147483647i), _wgslsmith_dot_vec2_i32(func_1(vec3<f32>(326f, 773f, 577f), global1.a, global2.x), vec2<i32>(2147483647i, 2147483647i)))));
    var_0 = func_2(vec4<bool>(!all(vec2<bool>(true, true)), !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), global2.x < abs(func_1(global0.xyw, vec2<i32>(global1.a.x, global1.a.x), 0i).x), true));
    let var_1 = Struct_1(vec2<i32>(u_input.a, _wgslsmith_mult_i32(reverseBits(global2.x), 2147483647i)));
    global2 = ~vec2<i32>(-13511i, -_wgslsmith_sub_i32(i32(-1i) * -12897i, -var_1.a.x));
    var var_2 = _wgslsmith_sub_vec4_u32(~(~(~(~vec4<u32>(117804u, 4294967295u, 1u, 0u)))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(26977u, 0u), 1u, ~59740u, min(4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) << (select(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~4294967295u, 29820u, ~41623u, 8618u), -157f < global0.x) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, global0.x)))), firstTrailingBit(var_0.a.x) | global1.a.x, select(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, var_1.a.x, 2147483647i), ~vec3<i32>(0i, global2.x, u_input.a)), vec3<i32>(_wgslsmith_mult_i32(abs(-30755i), func_2(vec4<bool>(true, true, false, true)).a.x), ~(-global2.x), func_2(vec4<bool>(true, true, true, true)).a.x), vec3<bool>(all(vec2<bool>(true, false)), true, 6612i != var_0.a.x)), ~var_2.xy);
}

