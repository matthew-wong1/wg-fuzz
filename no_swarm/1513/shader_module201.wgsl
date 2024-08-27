struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, 1i, 1i, 0i), -206f);

var<private> global1: array<f32, 32>;

var<private> global2: array<f32, 23>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(u_input.a, global3.x | (any(select(vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(false, global3.x, global3.x, true), global3.x)) | true));
    global3 = !vec3<bool>(527f <= _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), any(select(!global3.xx, select(vec2<bool>(false, false), global3.yy, vec2<bool>(var_0.b, false)), u_input.a.x >= var_0.a.x)), all(select(select(vec3<bool>(true, true, global3.x), vec3<bool>(true, true, global3.x), var_0.b), vec3<bool>(var_0.b, var_0.b, false), var_0.a.x <= 0u)));
    var var_1 = select(vec2<i32>(_wgslsmith_div_i32(select(-21448i, -47361i | global0.a.x, false), global0.a.x), u_input.d), vec2<i32>(abs(min(global0.a.x, 43650i) & -2147483647i), u_input.b), vec2<bool>(all(!global3.xz), select(true, 22521u != firstTrailingBit(0u), all(global3.xy))));
    global1 = array<f32, 32>();
    var_1 = ~reverseBits(-_wgslsmith_mod_vec2_i32(global0.a.xy, vec2<i32>(var_1.x, global0.a.x)));
    return global2[_wgslsmith_index_u32(130641u, 23u)];
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 23>();
    var var_0 = Struct_2(global0.a, _wgslsmith_f_op_f32(func_3()));
    global0 = Struct_2(vec4<i32>(2147483647i << (~(u_input.a.x << (1u % 32u)) % 32u), -63683i, _wgslsmith_mult_i32(global0.a.x, reverseBits(abs(-1i))), -1i), global0.b);
    var var_1 = vec2<u32>(select(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x) ^ vec3<u32>(3395u, 19657u, 7970u), vec3<u32>(u_input.c, u_input.a.x, u_input.c))), global3.x), 13142u);
    var var_2 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.b, _wgslsmith_mult_i32(-24630i, -global0.a.x)), global0.a, var_0.a), global2[_wgslsmith_index_u32(4294967295u, 23u)]);
    return Struct_2(abs(vec4<i32>(var_0.a.x, 2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, -16108i), _wgslsmith_mult_i32(-2147483647i, -1i)), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * -295f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f))))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(2147483647i & max(u_input.d, global0.a.x)), _wgslsmith_dot_vec3_i32(~firstTrailingBit(global0.a.www), global0.a.ywx ^ vec3<i32>(-1i, -15752i, -48683i))), max(firstTrailingBit(vec2<i32>(u_input.b, _wgslsmith_sub_i32(31794i, -20536i))), (vec2<i32>(3138i, -1i) >> (u_input.a % vec2<u32>(32u))) >> (countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1540u), u_input.a, vec2<u32>(0u, 8923u))) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(countOneBits(~global0.a.zz & vec2<i32>(u_input.b, u_input.b)), global0.a.zw, global0.a.yz));
    var var_1 = Struct_2(~(~(-global0.a)), global2[_wgslsmith_index_u32(1u, 23u)]);
    let var_2 = func_2();
    var_0 = vec2<i32>(var_2.a.x, u_input.d);
    var_1 = func_2();
    return var_1.a.x != reverseBits(_wgslsmith_div_i32(-1i, ~var_0.x << (u_input.c % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3.x;
    var var_1 = -global0.a.zyy;
    var_0 = all(vec4<bool>(global3.x, true, select(global3.x, false, select(true, func_1(global3.x, global3.yx), false)), false));
    global1 = array<f32, 32>();
    global3 = vec3<bool>(global3.x, any(vec4<bool>(false | global3.x, true, !global3.x, select(false, false, global3.x))) && all(select(vec2<bool>(true, true), !global3.zz, select(global3.yz, vec2<bool>(false, false), global3.x))), !select(any(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, false), global3.x)), all(global3.yx) & true, global3.x));
    var var_2 = !(true | !(!(global1[_wgslsmith_index_u32(u_input.c, 32u)] >= 854f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, global1[_wgslsmith_index_u32(19386u, 32u)]), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1050f, 578f)))), vec2<f32>(global1[_wgslsmith_index_u32(50063u, 32u)], -565f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(217f, global0.b) - vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], -766f)) + _wgslsmith_div_vec2_f32(vec2<f32>(657f, 847f), vec2<f32>(global2[_wgslsmith_index_u32(14281u, 23u)], -583f))))), abs(var_1.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.b - -1000f), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(12094u, 23u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1375f, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec2<f32>(-2164f, 1399f)))))));
}

