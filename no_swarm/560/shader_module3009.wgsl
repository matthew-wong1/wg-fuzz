struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(19611u, 1u, 4294967295u, 1u), false, 0u, vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true));

var<private> global1: array<f32, 30>;

var<private> global2: array<vec2<bool>, 20>;

var<private> global3: Struct_3;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global0.c, 30u)]), vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 30u)], -1407f, global1[_wgslsmith_index_u32(global3.c.x, 30u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(global3.c.x, 30u)], global3.a, 673f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a, -1000f, global3.a), vec3<f32>(358f, 796f, -959f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, global3.a, -495f), vec3<f32>(global1[_wgslsmith_index_u32(global3.c.x, 30u)], global3.a, -1896f), global0.e.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1686f, global3.a, 279f))))))));
    var var_1 = global1[_wgslsmith_index_u32(~46633u, 30u)];
    global3 = Struct_3(489f, vec3<i32>(max(global3.b.x, global3.b.x), firstTrailingBit(_wgslsmith_mod_i32(-56097i, 73764i)) << (u_input.a.x % 32u), 2147483647i), global0.a.yz);
    var var_2 = Struct_1(global0.a, global0.d.x, global3.c.x | 86951u, !vec4<bool>(true, all(!global0.e), !(-46889i >= global3.b.x), -639f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(62140u, 30u)])), select(!vec4<bool>(global0.e.x, false && global0.b, any(vec3<bool>(global0.d.x, false, true)), all(vec4<bool>(global0.d.x, true, false, false))), vec4<bool>(true, all(vec3<bool>(false, false, global0.e.x)), true != global0.e.x, !any(global0.e.xy)), u_input.a.x < 57885u));
    let var_3 = Struct_2(global3.c.x > _wgslsmith_sub_u32(abs(max(var_2.a.x, u_input.a.x)), ~global3.c.x), Struct_1(~(~select(var_2.a, var_2.a, global0.e)), false, 18344u, var_2.d, select(global0.d, var_2.e, select(vec4<bool>(true, global0.e.x, false, true), !var_2.d, !var_2.e))), global0.a.ww, countOneBits(~global3.b.x), global0.a.wx);
    return select(var_2.e.xxz, !var_2.d.xxz, var_2.e.yxw);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> bool {
    global2 = array<vec2<bool>, 20>();
    global0 = Struct_1(~(~vec4<u32>(global0.c >> (4294967295u % 32u), 4294967295u & global0.c, 25978u, u_input.a.x)), global1[_wgslsmith_index_u32(4294967295u, 30u)] >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(3064u, 30u)] - arg_0.x))), u_input.a.x, !select(global0.e, !global0.d, _wgslsmith_f_op_f32(f32(-1f) * -384f) == arg_1), !select(vec4<bool>(global0.d.x || true, global0.d.x | global0.b, !global0.b, global0.b), !vec4<bool>(global0.e.x, global0.e.x, global0.d.x, true), !select(global0.e, global0.d, global0.d)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(24086u, 30u)], 1830f, global1[_wgslsmith_index_u32(u_input.a.x, 30u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, global3.a, -796f)))), vec3<f32>(arg_0.x, arg_0.x, 662f), select(select(global0.d.zzz, func_3(), global0.e.yzw), !(!global0.e.yzy), vec3<bool>(true, global0.b, !global0.e.x)))));
    let var_1 = -2100f;
    var var_2 = !(!(!global0.e));
    return any(global0.e.zy) & (max(~(39138u >> (global3.c.x % 32u)), u_input.a.x) > ~4294967295u);
}

fn func_1() -> StorageBuffer {
    var var_0 = global3.b.x;
    var var_1 = !(!func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.c, 30u)], 146f) * vec2<f32>(858f, global1[_wgslsmith_index_u32(57145u, 30u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-568f, 1387f, global0.d.x)))));
    return StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(16074i, global3.b.x, -1i, 21785i) & vec4<i32>(-10717i, -26935i, global3.b.x, global3.b.x)), abs(vec4<i32>(-21816i, -27568i, 2147483647i, global3.b.x))), vec4<i32>(-(global3.b.x >> (1u % 32u)), global3.b.x, firstLeadingBit(select(16900i, 11447i, false)), global3.b.x)), ~u_input.a, firstLeadingBit(4294967295u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2672f))), _wgslsmith_f_op_f32(global3.a - global3.a), !all(!global2[_wgslsmith_index_u32(global0.c, 20u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(!select(vec2<bool>(true, global0.d.x), vec2<bool>(true, true), vec2<bool>(false, true)), !(!global2[_wgslsmith_index_u32(18922u, 20u)]), global3.b.x >= global3.b.x)), global0.b);
    let var_1 = _wgslsmith_clamp_u32(~(~(~_wgslsmith_div_u32(35661u, global0.c))), 35124u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, reverseBits(global0.a.x), firstLeadingBit(u_input.a.x)), countOneBits(~global0.a.zwx)));
    let var_2 = firstTrailingBit(vec3<i32>(8199i, 16119i, global3.b.x));
    let x = u_input.a;
    s_output = func_1();
}

