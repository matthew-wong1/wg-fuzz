struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(0u, 26811u, 1u, 23009u), vec4<u32>(4294967295u, 22971u, 36128u, 0u));

var<private> global1: array<f32, 17> = array<f32, 17>(-492f, -356f, -1909f, -1379f, -126f, -1880f, 161f, 1000f, -2842f, 149f, 471f, 700f, 649f, -216f, 2250f, -551f, -1444f);

var<private> global2: Struct_1;

var<private> global3: vec3<i32> = vec3<i32>(-72399i, 0i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<vec4<u32>, 2>();
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(-15709i, abs(-24957i), _wgslsmith_mult_i32(1034i, u_input.d));
    global3 = abs(reverseBits(countOneBits(vec3<i32>(i32(-1i) * -75674i, _wgslsmith_dot_vec3_i32(vec3<i32>(-13469i, -54418i, 1i), vec3<i32>(35925i, 0i, var_0.x)), global3.x))));
    let var_1 = Struct_2(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, false))), vec2<bool>(true, all(vec2<bool>(true, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))), false);
    var_0 = abs(_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.x | u_input.d, _wgslsmith_dot_vec2_i32(global3.yy, vec2<i32>(-2147483647i, 72115i)), var_0.x >> (0u % 32u)), max(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 6775i, global3.x), vec3<i32>(2551i, 14472i, var_0.x)), firstTrailingBit(vec3<i32>(var_0.x, var_0.x, 1i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global3.x, -45075i), vec3<i32>(36419i, u_input.d, u_input.d)))));
    return _wgslsmith_mod_u32(global2.a.x, ~u_input.a) | abs(_wgslsmith_div_u32(global2.a.x, ~global2.a.x));
}

fn func_2() -> vec3<f32> {
    let var_0 = u_input.b.yz;
    var var_1 = global1[_wgslsmith_index_u32(func_3(), 17u)];
    let var_2 = ((~abs(vec3<i32>(-5658i, global3.x, global3.x)) >> (((vec3<u32>(global2.a.x, 4294967295u, 42543u) << (global2.a % vec3<u32>(32u))) & u_input.b.zyz) % vec3<u32>(32u))) ^ ~(-vec3<i32>(9194i, u_input.d, u_input.d) >> (~global2.a % vec3<u32>(32u)))) ^ (~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 7689i, -1i), vec3<i32>(u_input.d, u_input.d, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(3853i, 51499i, u_input.d), vec3<i32>(global3.x, 0i, global3.x))) & countOneBits(abs(select(vec3<i32>(u_input.d, 2147483647i, global3.x), vec3<i32>(-77406i, -43158i, 21161i), false))));
    var var_3 = Struct_2(!(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)), any(vec2<bool>(true, (84105u < global2.a.x) && all(vec4<bool>(false, true, true, false)))));
    var_1 = _wgslsmith_f_op_f32(1481f - -858f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-560f, global1[_wgslsmith_index_u32(4294967295u, 17u)], -937f))) + _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global2.a.x, 17u)], global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(global2.a.x, 17u)]), vec3<f32>(-1225f, -604f, global1[_wgslsmith_index_u32(global2.a.x, 17u)]))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(49589u, 17u)], global1[_wgslsmith_index_u32(global2.a.x, 17u)], -206f), vec3<f32>(1355f, global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(global2.a.x, 17u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(44947u, 17u)], 1000f, 765f), vec3<f32>(global1[_wgslsmith_index_u32(8366u, 17u)], global1[_wgslsmith_index_u32(var_0.x, 17u)], global1[_wgslsmith_index_u32(45651u, 17u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-533f, global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(50508u, 17u)])), var_3.b)))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_1 = Struct_1(min(reverseBits(global2.a), ~firstTrailingBit(~global2.a)));
    global2 = Struct_1(vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.a.x, global2.a.x) & vec3<u32>(u_input.a, 12436u, 36859u), ~vec3<u32>(1u, u_input.b.x, 46717u)), _wgslsmith_div_u32(_wgslsmith_div_u32(39281u, global2.a.x), _wgslsmith_div_u32(46810u, var_1.a.x))) << (vec3<u32>(abs(0u), reverseBits(~var_1.a.x), u_input.c) % vec3<u32>(32u)));
    global2 = var_1;
    var var_2 = -_wgslsmith_clamp_i32(u_input.d, -10020i, -u_input.d);
    return _wgslsmith_mult_u32(~u_input.c, 99052u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -1i;
    let var_1 = vec4<f32>(global1[_wgslsmith_index_u32(~(~1u) ^ _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(~global2.a.x, func_1())), 17u)], global1[_wgslsmith_index_u32(~(~u_input.a), 17u)], _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2()).x, global1[_wgslsmith_index_u32(1u, 17u)]), -1114f);
    global0 = array<vec4<u32>, 2>();
    global3 = vec3<i32>(max(83812i << (_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(27990u, 0u)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global3.yz, global3.zy), global3.x, 1i)) ^ -35008i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, ~24032i), u_input.d, countOneBits(_wgslsmith_clamp_i32(u_input.d, global3.x, u_input.d))), -(~reverseBits(_wgslsmith_div_i32(-2147483647i, 2147483647i))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1542f + _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(select(697f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.a, 17u)], var_1.x))), all(vec3<bool>(true, true, true)))))), var_1.x, global1[_wgslsmith_index_u32(~35837u, 17u)]);
    let var_3 = any(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(global2.a.x), u_input.c), vec3<f32>(327f, var_2.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]));
}

