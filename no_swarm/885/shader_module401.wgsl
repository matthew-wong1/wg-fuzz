struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: array<bool, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(20874u, u_input.a.x, u_input.a.x), u_input.a), 5439u), vec2<u32>(~(~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, select(0u, 1u, global1[_wgslsmith_index_u32(4294967295u, 11u)])))), select(vec3<bool>(all(vec2<bool>(false, true)), true, true | (u_input.a.x <= u_input.a.x)), vec3<bool>(any(vec3<bool>(true, true, true)), !global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true), select(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true, true)), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(u_input.a.x, 11u)], false), true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(224f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(672f, 276f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-368f, 1105f))))))));
    var var_2 = (~select(_wgslsmith_mult_vec4_u32(vec4<u32>(97260u, 2249u, var_0.a, 1u), vec4<u32>(5355u, 7802u, var_0.a, 4294967295u)), vec4<u32>(0u, 10444u, 1u, var_0.a), any(vec4<bool>(true, true, var_0.b.x, true))) >> (vec4<u32>(~var_0.a, _wgslsmith_div_u32(firstLeadingBit(var_0.a), 35000u << (var_0.a % 32u)), var_0.a, 12108u) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a.x >> (~(~1u) % 32u), _wgslsmith_div_u32(u_input.a.x, 1u), var_0.a, var_0.a);
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    return _wgslsmith_f_op_f32(305f - var_1.x);
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1513f * 356f) + _wgslsmith_f_op_f32(func_3())) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f), -268f))) + 1f);
    global0 = array<vec2<bool>, 24>();
    var var_1 = global0[_wgslsmith_index_u32(~0u, 24u)];
    let var_2 = Struct_3(4294967295u, select(!(!select(vec3<bool>(true, false, false), vec3<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(4294967295u, 11u)]), var_1.x)), select(select(select(vec3<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]), var_1.x), vec3<bool>(false, var_1.x, false), u_input.a.x >= 1u), !select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), vec3<bool>(true, true, true)), !(!var_1.x)));
    return Struct_5(Struct_2(vec4<i32>(reverseBits(abs(1i)), -120i, i32(-1i) * -31425i, -(~(-1i))), Struct_1(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1705f, -2852f)) * 153f), vec3<i32>(reverseBits(-84178i), _wgslsmith_add_i32(0i, -32605i), _wgslsmith_mult_i32(1i, 2147483647i)), vec3<i32>(-1i) * -vec3<i32>(-6386i, 38950i, 26008i), vec2<i32>(i32(-1i) * -23874i, -24105i))));
}

fn func_1(arg_0: vec2<i32>) -> vec3<i32> {
    var var_0 = 632f;
    var var_1 = 4294967295u;
    var_1 = 1u;
    let var_2 = func_2();
    var var_3 = all(var_2.a.b.a);
    return vec3<i32>(-38941i, -5466i, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 24>();
    global0 = array<vec2<bool>, 24>();
    var var_0 = vec2<bool>(all(!vec4<bool>(true, !global1[_wgslsmith_index_u32(1u, 11u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = _wgslsmith_add_vec3_i32(-abs(vec3<i32>(1i, 18777i, _wgslsmith_mod_i32(8574i, 12338i))), -_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-43862i, 73849i, 1i)), abs(vec3<i32>(5766i, -19633i, 0i) >> (vec3<u32>(91050u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), func_1(~vec2<i32>(2429i, 2147483647i))));
    let var_3 = Struct_3(0u, select(select(!select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, true, false), false), vec3<bool>(func_2().a.b.a.x, any(global0[_wgslsmith_index_u32(0u, 24u)]), global1[_wgslsmith_index_u32(1u, 11u)]), select(select(vec3<bool>(false, false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], false), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(false, false, false), vec3<bool>(global1[_wgslsmith_index_u32(42721u, 11u)], false, var_0.x), vec3<bool>(false, true, var_0.x)), any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(15387u, 11u)])))), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(46002u, 11u)], false))), select(vec3<bool>(var_0.x, true, true), select(vec3<bool>(true, var_0.x, false), func_2().a.b.a, !vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), true)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.x));
}

