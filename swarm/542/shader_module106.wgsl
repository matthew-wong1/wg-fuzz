struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(45433u, 36570u);

var<private> global1: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true));

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 15>;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<f32>(1101f, -1538f), vec4<u32>(4294967295u, 42693u, 41615u, 0u), false, vec3<u32>(4294967295u, 0u, 48700u)), Struct_1(vec2<f32>(680f, 145f), vec4<u32>(0u, 0u, 89835u, 0u), false, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec2<f32>(-430f, -360f), vec4<u32>(4294967295u, 12855u, 99846u, 4294967295u), false, vec3<u32>(19030u, 0u, 0u)), Struct_1(vec2<f32>(716f, -1000f), vec4<u32>(24883u, 4294967295u, 0u, 1u), true, vec3<u32>(31567u, 0u, 67713u)), Struct_1(vec2<f32>(527f, 1346f), vec4<u32>(1u, 1u, 21049u, 39793u), false, vec3<u32>(5536u, 14680u, 8049u)), Struct_1(vec2<f32>(1244f, 1948f), vec4<u32>(4294967295u, 0u, 591u, 40809u), true, vec3<u32>(15390u, 23631u, 4294967295u)), Struct_1(vec2<f32>(-587f, -238f), vec4<u32>(103998u, 0u, 28806u, 22771u), false, vec3<u32>(4294967295u, 1u, 52108u)), Struct_1(vec2<f32>(-1741f, -584f), vec4<u32>(0u, 1u, 4294967295u, 42020u), true, vec3<u32>(63623u, 1u, 50413u)), Struct_1(vec2<f32>(-1442f, 1500f), vec4<u32>(0u, 100604u, 0u, 4294967295u), false, vec3<u32>(4294967295u, 77281u, 1u)), Struct_1(vec2<f32>(1703f, 1236f), vec4<u32>(1u, 1u, 10354u, 1u), true, vec3<u32>(19753u, 45365u, 37221u)), Struct_1(vec2<f32>(-346f, -798f), vec4<u32>(1u, 4294967295u, 4294967295u, 50585u), false, vec3<u32>(1u, 79584u, 2663u)), Struct_1(vec2<f32>(2713f, 1093f), vec4<u32>(2411u, 0u, 0u, 4294967295u), false, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec2<f32>(588f, -1182f), vec4<u32>(26220u, 4294967295u, 51567u, 25385u), true, vec3<u32>(6334u, 27015u, 58099u)), Struct_1(vec2<f32>(-660f, 287f), vec4<u32>(1u, 13734u, 0u, 44357u), false, vec3<u32>(5423u, 0u, 1u)), Struct_1(vec2<f32>(-1000f, -666f), vec4<u32>(4294967295u, 0u, 56525u, 0u), true, vec3<u32>(4294967295u, 72426u, 11332u)), Struct_1(vec2<f32>(-508f, -1000f), vec4<u32>(1u, 4294967295u, 1u, 4785u), true, vec3<u32>(0u, 50237u, 9493u)), Struct_1(vec2<f32>(438f, 1166f), vec4<u32>(23106u, 1u, 997u, 86944u), false, vec3<u32>(1653u, 0u, 4294967295u)), Struct_1(vec2<f32>(-2153f, -579f), vec4<u32>(93531u, 19412u, 4294967295u, 1u), false, vec3<u32>(1052u, 0u, 36271u)), Struct_1(vec2<f32>(-1132f, -1193f), vec4<u32>(13493u, 4294967295u, 30571u, 4294967295u), true, vec3<u32>(42033u, 0u, 1u)), Struct_1(vec2<f32>(613f, -477f), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), false, vec3<u32>(0u, 0u, 1u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x + 1066f), arg_0.a.x, _wgslsmith_div_f32(529f, -1237f), -496f))));
    let var_2 = var_0.c;
    var var_3 = arg_0;
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(var_0.a.x - var_1.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(369f)) + -619f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_add_u32(~69539u, var_4.b.x) <= ~global0.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(arg_0.a.x, -122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), arg_2.b, all(vec4<bool>(!(global0.x >= 27638u), arg_0.c, all(!arg_3), true)), vec3<u32>(firstLeadingBit(1u), 1u, select(121304u, ~_wgslsmith_dot_vec2_u32(arg_0.b.yy, arg_0.b.yz), any(vec4<bool>(true, true, arg_0.c, true)))));
    var_0 = Struct_1(var_0.a, ~arg_0.b, arg_2.c, ~abs(_wgslsmith_mod_vec3_u32(arg_2.d, ~arg_0.b.zwy)));
    var var_1 = u_input.a.zzy;
    let var_2 = true;
    var_1 = vec3<i32>(~(-2147483647i), -2147483647i, 2147483647i);
    return global4[_wgslsmith_index_u32(~20372u, 20u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1149f)) - arg_3) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1725f, -1814f, arg_1.c)), arg_0.x))))));
    global4 = array<Struct_1, 20>();
    var var_1 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-285f * 858f), -1393f), _wgslsmith_f_op_vec2_f32(func_2(global4[_wgslsmith_index_u32(5512u, 20u)])), true)), vec4<u32>(arg_2, 8323u, ~4294967295u, countOneBits(_wgslsmith_dot_vec3_u32(arg_1.b.yww, vec3<u32>(0u, global0.x, 0u)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 15u)], -6352i), u_input.a) <= 46317i, ~vec3<u32>(arg_2, ~85901u, ~4294967295u)), ~(abs(~vec4<u32>(0u, arg_1.b.x, 4294967295u, 1u)) ^ firstTrailingBit(countOneBits(arg_1.b))), arg_1, vec4<bool>(true, _wgslsmith_f_op_f32(-821f - arg_1.a.x) <= 528f, select(arg_1.c, arg_1.c, all(!vec2<bool>(arg_1.c, false))), false));
    var_1 = global4[_wgslsmith_index_u32(~arg_1.d.x, 20u)];
    var var_2 = _wgslsmith_div_u32(23195u, global0.x);
    return select(vec3<bool>(arg_1.c, arg_1.c, true), select(!select(vec3<bool>(false, arg_1.c, false), select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(arg_1.c, arg_1.c, arg_1.c), vec3<bool>(true, var_1.c, false)), arg_1.c), !vec3<bool>(!var_1.c, var_1.c, arg_1.c), select(!vec3<bool>(var_1.c, false, true), select(vec3<bool>(false, false, var_1.c), vec3<bool>(var_1.c, true, true), true), select(!vec3<bool>(var_1.c, arg_1.c, true), select(vec3<bool>(arg_1.c, var_1.c, false), vec3<bool>(true, arg_1.c, false), false), any(global1[_wgslsmith_index_u32(15189u, 21u)])))), all(select(select(vec3<bool>(true, true, arg_1.c), select(vec3<bool>(arg_1.c, false, true), vec3<bool>(arg_1.c, true, false), true), !vec3<bool>(true, var_1.c, arg_1.c)), vec3<bool>(true, all(global1[_wgslsmith_index_u32(8471u, 21u)]), false), all(vec3<bool>(var_1.c, true, arg_1.c)) == !var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~(~(2450u << (((global0.x ^ global0.x) ^ 0u) % 32u))), 20u)];
    global0 = var_0.b.xz;
    var var_1 = !var_0.c;
    let var_2 = var_0.a;
    let var_3 = select(select(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 380f, 806f))), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.b.x, 1u), 0u), 20u)], _wgslsmith_sub_u32(_wgslsmith_add_u32(35278u, var_0.b.x), ~global0.x), _wgslsmith_f_op_f32(round(var_2.x))), !select(func_1(vec3<f32>(global2.x, 516f, var_0.a.x), Struct_1(vec2<f32>(-475f, var_0.a.x), vec4<u32>(80057u, 0u, 29983u, 4294967295u), var_0.c, var_0.d), var_0.b.x, var_0.a.x), !vec3<bool>(true, var_0.c, true), var_0.c), !var_0.c), select(select(!vec3<bool>(true, var_0.c, false), func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, global2.x, 246f), vec3<f32>(global2.x, -1666f, var_0.a.x))), Struct_1(vec2<f32>(-394f, -1122f), vec4<u32>(1u, global0.x, var_0.d.x, 1u), true, vec3<u32>(4294967295u, 1u, global0.x)), ~1u, _wgslsmith_div_f32(-844f, var_0.a.x)), select(func_1(vec3<f32>(var_2.x, var_0.a.x, 2325f), Struct_1(var_0.a, var_0.b, true, var_0.b.zxz), global0.x, var_0.a.x), !vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, true, false))), vec3<bool>(!(var_0.a.x >= var_2.x), true, var_0.c), true), func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 924f, global2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, var_0.a.x, var_2.x), vec3<f32>(-324f, -806f, var_2.x))))), global4[_wgslsmith_index_u32(~(global0.x >> ((var_0.b.x >> (global0.x % 32u)) % 32u)), 20u)], ~_wgslsmith_clamp_u32(firstTrailingBit(var_0.d.x), 27644u, global0.x | 7305u), _wgslsmith_f_op_f32(-global2.x)));
    var var_4 = global4[_wgslsmith_index_u32(~var_0.b.x, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-func_3(global4[_wgslsmith_index_u32(reverseBits(11361u), 20u)], vec4<u32>(124637u, var_4.b.x, global0.x, var_4.d.x), Struct_1(global2.yy, vec4<u32>(var_4.d.x, 0u, var_0.b.x, var_0.d.x), false, var_0.d), select(vec4<bool>(true, false, false, var_0.c), vec4<bool>(false, var_4.c, var_0.c, true), true)).a.x), var_4.a.x, 1520f), vec2<u32>(~(~4294967295u), global0.x), 57699u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(74119u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, var_0.d.x, global0.x, global0.x), vec4<u32>(var_4.d.x, global0.x, var_4.d.x, 20408u))), ~global0.x), u_input.a);
}

