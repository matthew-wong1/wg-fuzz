struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-192f, 1717f, 154f, 792f, 1851f, 683f, 631f, 1627f, -853f, -2010f, 1291f, -1000f, -764f, 2066f, -1714f);

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-421f, 724f, 682f), vec3<f32>(-423f, -318f, 489f), vec3<f32>(525f, -860f, -1072f), vec3<f32>(-1000f, 564f, 772f), vec3<f32>(-1090f, -1000f, 870f), vec3<f32>(-1000f, 321f, -562f));

var<private> global2: array<bool, 29>;

var<private> global3: i32 = 0i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<vec3<f32>, 6>();
    var var_0 = !(!vec3<bool>(arg_0.c, global2[_wgslsmith_index_u32(~4294967295u, 29u)] & true, true));
    var var_1 = abs(arg_0.b.x);
    var var_2 = Struct_2(Struct_1(46877u, ~arg_0.b, true), !vec3<bool>(false, arg_0.c, !(arg_0.a >= 31041u)), arg_0);
    var var_3 = reverseBits(_wgslsmith_div_u32(var_2.a.b.x, arg_0.b.x & min(var_2.a.b.x, min(47652u, 48293u))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -687f)));
}

fn func_2() -> vec2<bool> {
    let var_0 = vec3<bool>(any(!vec4<bool>(!global2[_wgslsmith_index_u32(0u, 29u)], all(vec3<bool>(global2[_wgslsmith_index_u32(150366u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)])), -25512i <= u_input.c.x, u_input.c.x != u_input.c.x)), false, global2[_wgslsmith_index_u32(~1u, 29u)]);
    var var_1 = 0i;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(0u, vec4<u32>(2086u, 4294967295u, 4294967295u, 0u), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(47922u, 100187u, 4294967295u), 15u)] - _wgslsmith_f_op_f32(min(462f, global0[_wgslsmith_index_u32(1u, 15u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-791f, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(1u, 4294967295u)), 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-698f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 15u)])))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-668f)))))));
    let var_3 = Struct_3(abs(63784u), Struct_1(16517u, abs(reverseBits(~vec4<u32>(68470u, 47071u, 1u, 4294967295u))), global2[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(~0u, max(1u, 0u)), 1u, false), 29u)]), Struct_1(1u, vec4<u32>(0u, countOneBits(1u), _wgslsmith_clamp_u32(~1u, ~19583u, min(4294967295u, 4294967295u)), ~31794u), false));
    var_1 = u_input.b;
    return var_0.xz;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<f32>) -> bool {
    var var_0 = vec3<bool>(false, all(!vec2<bool>(any(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(6354u, 29u)], global2[_wgslsmith_index_u32(22685u, 29u)])), false)), any(!func_2()));
    global2 = array<bool, 29>();
    var var_1 = -884f;
    global2 = array<bool, 29>();
    let var_2 = arg_0.x;
    return any(vec2<bool>(_wgslsmith_f_op_f32(ceil(472f)) >= arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + global0[_wgslsmith_index_u32(92460u, 15u)]) + 278f) >= -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 29>();
    var var_0 = u_input.c.x;
    var var_1 = select(vec2<bool>((global2[_wgslsmith_index_u32(4294967295u, 29u)] && func_1(vec2<f32>(global0[_wgslsmith_index_u32(35769u, 15u)], global0[_wgslsmith_index_u32(76821u, 15u)]), u_input.a.yy, global1[_wgslsmith_index_u32(93685u, 6u)])) & !all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 29u)], true, false)), global2[_wgslsmith_index_u32(reverseBits(~(~30182u)), 29u)]), select(vec2<bool>(-2147483647i >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.c.x, -2147483647i)), true), vec2<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(0u, 29u)])), !global2[_wgslsmith_index_u32(1u, 29u)]), global2[_wgslsmith_index_u32(~1u, 29u)]), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(25050u, 29u)], false)), !vec2<bool>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(~1u, 29u)]), firstTrailingBit(1i) < u_input.a.x));
    var_1 = select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~(~45207u)), 29u)], false), vec2<bool>(select(false, !(!var_1.x), !(!var_1.x)), var_1.x), vec2<bool>(true && global2[_wgslsmith_index_u32(~4294967295u, 29u)], func_2().x));
    var var_2 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-select(vec4<i32>(u_input.c.x, u_input.b, -15721i, u_input.b), -vec4<i32>(6080i, -55331i, u_input.a.x, u_input.c.x), false), -countOneBits(vec4<i32>(u_input.a.x, u_input.c.x, 1i, u_input.b) ^ vec4<i32>(-24071i, u_input.b, u_input.a.x, 40390i))), 42501i);
}

