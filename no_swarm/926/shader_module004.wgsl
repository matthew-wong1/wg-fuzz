struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(7593i, -32774i), vec2<f32>(1344f, 1238f));

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    var var_0 = (all(vec3<bool>(true, true, true)) | !(any(vec2<bool>(false, false)) || any(vec4<bool>(true, true, false, false)))) & !(select(true, false, any(vec3<bool>(true, false, false))) | true);
    var_0 = max(~34877i, -21129i) >= abs(~_wgslsmith_add_i32(reverseBits(u_input.b.x), 75962i));
    global1 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.a.yz, vec2<u32>(1u, u_input.a.x));
    let var_2 = arg_1;
    return countOneBits((arg_1.a.x & ~(-1i)) ^ (-1i >> ((firstTrailingBit(20302u) ^ max(var_1.x, arg_3)) % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = vec3<i32>(-_wgslsmith_mult_i32(2147483647i, arg_0.a.x) | 2147483647i, global0.a.x, global0.a.x) ^ -_wgslsmith_clamp_vec3_i32(-(vec3<i32>(28362i, 27231i, -1i) & vec3<i32>(u_input.b.x, 321i, 0i)), vec3<i32>(-81454i, func_3(vec4<i32>(0i, -28647i, 0i, 2147483647i), Struct_1(vec2<i32>(1i, -66215i), arg_2.b), global0.b.x, u_input.a.x), _wgslsmith_mult_i32(u_input.b.x, 10331i)), ~vec3<i32>(-9199i, -26836i, 52454i) >> (reverseBits(vec3<u32>(40688u, 59898u, u_input.a.x)) % vec3<u32>(32u)));
    global1 = array<Struct_1, 10>();
    var_0 = vec3<i32>(-22096i, 19971i, arg_2.a.x);
    global1 = array<Struct_1, 10>();
    let var_1 = arg_0.a.x;
    return !vec3<bool>(true, false, true | !all(vec3<bool>(true, true, false)));
}

fn func_1() -> Struct_1 {
    var var_0 = true;
    var var_1 = select(!select(func_2(Struct_1(global0.a, global0.b), 4294967295u, Struct_1(vec2<i32>(-28421i, -11137i), global0.b), global1[_wgslsmith_index_u32(~4294967295u, 10u)]), select(func_2(Struct_1(global0.a, global0.b), 0u, global1[_wgslsmith_index_u32(116849u, 10u)], Struct_1(vec2<i32>(u_input.b.x, -24448i), vec2<f32>(298f, global0.b.x))), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true)), vec3<bool>(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], firstLeadingBit(0u), Struct_1(vec2<i32>(2147483647i, 17575i), _wgslsmith_f_op_vec2_f32(global0.b + global0.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4691u) << ((37021u << (u_input.a.x % 32u)) % 32u), 10u)]).x, false, -(global0.a.x ^ -66448i) <= global0.a.x), vec3<bool>((true & (global0.b.x <= global0.b.x)) && all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), all(vec2<bool>(true, true)), !select(true, 1152f >= global0.b.x, any(vec4<bool>(true, true, false, true)))));
    var var_2 = var_1.x;
    var var_3 = 0i;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1957f, global0.b.x, 735f, -1000f), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -1738f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b.x, -527f, global0.b.x, global0.b.x)))))));
    return Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.b.x), abs(vec2<i32>(global0.a.x, -2147483647i)))) >> (_wgslsmith_sub_vec2_u32(~(~u_input.a.zz), select(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy, false) ^ _wgslsmith_add_vec2_u32(vec2<u32>(1u, 5990u), u_input.a.xw)) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, global0.b.x))) * _wgslsmith_div_f32(global0.b.x, 1f)), _wgslsmith_f_op_f32(f32(-1f) * -419f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = func_1();
    let var_1 = select(any(vec2<bool>(true, true)) | false, u_input.a.x < u_input.a.x, any(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, u_input.b.x, global0.a.x, 23819i), vec4<i32>(1i, global0.a.x, 0i, u_input.b.x)) == -33394i, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), func_2(global1[_wgslsmith_index_u32(~1u, 10u)], ~u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x & 4294967295u, 10u)], func_1()).x)));
    var var_2 = var_1;
    let var_3 = var_0;
    var var_4 = select(select(!(!vec3<bool>(var_1, false, var_1)), vec3<bool>(var_3.b.x >= -1037f, false | var_1, _wgslsmith_add_i32(-1i, u_input.b.x) < _wgslsmith_sub_i32(var_0.a.x, -13150i)), select(select(!vec3<bool>(var_1, false, true), !vec3<bool>(false, false, var_1), 45396i <= var_3.a.x), !(!vec3<bool>(false, true, var_1)), !var_1)), !select(vec3<bool>(true, var_1, true), select(vec3<bool>(true, false, var_1), !vec3<bool>(var_1, var_1, false), var_1), var_1), func_2(var_0, ~0u, func_1(), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(-u_input.b.x)), 28986i);
}

