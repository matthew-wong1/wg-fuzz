struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-1000f, 388f, -332f, -310f, -762f, -948f, 180f, -1616f, -430f, -484f, 1000f, -446f, -973f, 1322f, 324f, -114f, -917f, -2632f, 302f, -230f, 243f);

var<private> global1: array<i32, 13> = array<i32, 13>(2147483647i, 64754i, -19776i, 1i, 15123i, -66867i, -6828i, 1i, -30734i, 0i, 0i, 21118i, i32(-2147483648));

var<private> global2: array<f32, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    global1 = array<i32, 13>();
    var var_0 = 1817f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-123f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 21u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f + -485f) + global0[_wgslsmith_index_u32(arg_0, 21u)])) - _wgslsmith_f_op_f32(-303f - global0[_wgslsmith_index_u32(31662u, 21u)]))));
    let var_1 = vec4<bool>(firstTrailingBit(0i | -arg_1.a.x) != _wgslsmith_dot_vec3_i32(vec3<i32>(-23056i, global1[_wgslsmith_index_u32(u_input.b, 13u)], 1i) | arg_1.a.xzy, vec3<i32>(_wgslsmith_sub_i32(u_input.a, 1i), abs(-49477i), -2147483647i)), true, true, true);
    let var_2 = arg_1;
    return true;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_5(select(all(vec3<bool>(true, true, true)), !(true | func_3(u_input.b, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(19153u, 13u)], -1i, -6630i, global1[_wgslsmith_index_u32(89400u, 13u)])))), select(false, true, false) || (_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.b, 24u)])) < -214f)), select(vec4<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)), true, true), vec4<bool>(false, true, select(true, true, true) & any(vec2<bool>(true, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_3(u_input.b, Struct_1(vec4<i32>(48836i, 46149i, u_input.c, u_input.c))), func_3(4294967295u, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.c, 0i))), true, true), false)));
    var_0 = Struct_5(var_0.a, select(!vec4<bool>(var_0.a, true, func_3(u_input.b, Struct_1(vec4<i32>(-19288i, 5885i, 44531i, -2147483647i))), true), vec4<bool>(false, var_0.b.x, true, true), select(select(select(vec4<bool>(true, var_0.a, var_0.b.x, false), var_0.b, var_0.a), !vec4<bool>(var_0.a, false, var_0.b.x, var_0.a), !var_0.a), var_0.b, false)));
    let var_1 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(0u, u_input.b) << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))) ^ reverseBits(firstTrailingBit(vec2<u32>(u_input.b, 16663u))), ~(~vec2<u32>(u_input.b, abs(26593u))));
    var_0 = Struct_5(_wgslsmith_dot_vec2_u32(var_1, firstTrailingBit(firstLeadingBit(vec2<u32>(var_1.x, 25095u)))) <= _wgslsmith_mult_u32(20956u >> (1u % 32u), var_1.x), vec4<bool>(func_3(43028u, Struct_1(vec4<i32>(-14855i, u_input.c, 2147483647i, u_input.a) & vec4<i32>(54922i, global1[_wgslsmith_index_u32(u_input.b, 13u)], 32083i, global1[_wgslsmith_index_u32(var_1.x, 13u)]))), global0[_wgslsmith_index_u32(var_1.x, 21u)] > _wgslsmith_f_op_f32(trunc(-167f)), var_0.b.x, true));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f - _wgslsmith_f_op_f32(select(1978f, global0[_wgslsmith_index_u32(var_1.x, 21u)], false))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 0u), 21u)]))));
    return ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 3756u, var_1.x), ~vec4<u32>(15271u, 0u, var_1.x, var_1.x)), ~(var_1.x >> (1u % 32u)), 1u));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = arg_3.c;
    let var_1 = countOneBits(func_2());
    let var_2 = -(~arg_3.a.x);
    global1 = array<i32, 13>();
    let var_3 = arg_3.b.a.xx;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(abs(global1[_wgslsmith_index_u32(58580u, 13u)]), firstTrailingBit(1i), global1[_wgslsmith_index_u32(~u_input.b, 13u)], 1i);
    var_0 = -vec4<i32>(17896i, u_input.a, countOneBits(global1[_wgslsmith_index_u32(17176u, 13u)]), -u_input.c);
    let var_1 = !(!vec2<bool>(true, all(func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 21u)], 847f, 1833f), vec2<u32>(u_input.b, 22725u), vec3<bool>(true, true, true), Struct_2(var_0.xw, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], u_input.a, -1i, var_0.x)), vec4<u32>(0u, 33494u, u_input.b, 12702u), 62507u)))));
    let var_2 = ~(~vec4<i32>(~(-14383i), -u_input.c, var_0.x, _wgslsmith_mod_i32(0i, -30977i))) | vec4<i32>(-_wgslsmith_clamp_i32(-u_input.c, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2782i, global1[_wgslsmith_index_u32(11534u, 13u)], -2147483647i, global1[_wgslsmith_index_u32(0u, 13u)]), vec4<i32>(5978i, var_0.x, 25163i, 7444i))), 1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(-9323i, -10445i), var_0.wy), ~global1[_wgslsmith_index_u32(u_input.b | 39643u, 13u)]), max(-1i, 3427i));
    var var_3 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(var_2.x, var_2.x, var_2.x, var_0.x) >> (vec4<u32>(u_input.b, 6635u, 99348u, u_input.b) % vec4<u32>(32u)), min(vec4<i32>(0i, u_input.a, u_input.a, 12969i), var_2)) << (_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), vec4<u32>(u_input.b, 32139u, u_input.b, 72757u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(19910i, 0i, 33750i, global1[_wgslsmith_index_u32(28509u, 13u)]), select(var_2, var_2, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_mult_vec4_i32(max(var_2, vec4<i32>(var_0.x, 1i, var_2.x, global1[_wgslsmith_index_u32(u_input.b, 13u)])), -vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], var_2.x, -2147483647i, 7808i)), -var_2)) & u_input.c;
    var_0 = select(-vec4<i32>(67565i, u_input.c, var_0.x, _wgslsmith_dot_vec4_i32(var_2, reverseBits(vec4<i32>(-4045i, -2147483647i, 2147483647i, -15120i)))), var_2, select(!(!(!vec4<bool>(true, var_1.x, true, var_1.x))), !vec4<bool>(var_1.x, var_1.x, u_input.b >= u_input.b, var_1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<u32>(u_input.b, u_input.b)), select(vec2<u32>(33684u, ~(~u_input.b)), vec2<u32>(~(~34224u), reverseBits(u_input.b)), !(!vec2<bool>(false, var_1.x))), ~vec2<u32>(4294967295u, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, _wgslsmith_f_op_f32(-1657f + 402f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(28791u, 24u)] - 272f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -348f, 550f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 24u)], 177f, 609f))), !select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, false), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 21u)])) * global0[_wgslsmith_index_u32(~62113u, 21u)])));
}

