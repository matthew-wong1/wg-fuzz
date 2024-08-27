struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-2104f, 1344f, -433f, -968f, -933f, -270f, -636f, -1486f, -1222f, -868f, 557f, -677f);

var<private> global1: vec3<u32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> f32 {
    global1 = max(vec3<u32>(min(1u, _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 1u), firstTrailingBit(70415u))), 1u, u_input.a), vec3<u32>(_wgslsmith_mult_u32(arg_1.x, global2.x), _wgslsmith_sub_u32(arg_1.x, firstTrailingBit(10390u) & arg_1.x), _wgslsmith_mult_u32(22507u, firstTrailingBit(0u | u_input.a))));
    let var_0 = _wgslsmith_mult_vec3_i32(~abs(arg_0), arg_0 & (~vec3<i32>(1i, 2147483647i, 1i) & vec3<i32>(-2147483647i, -6423i, arg_0.x)));
    global1 = _wgslsmith_add_vec3_u32(reverseBits(~(~abs(vec3<u32>(29953u, 4294967295u, arg_1.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(arg_1.x), ~countOneBits(u_input.a), 0u), vec3<u32>(u_input.a >> (abs(global1.x) % 32u), firstLeadingBit(1u), _wgslsmith_div_u32(~global2.x, _wgslsmith_dot_vec2_u32(arg_1.yz, global1.xz)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(1u, ~0u), 12u)]) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(abs(global1.x), 12u)]))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-109f))));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(global2.x, 12u)], vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<i32>(1i, 1i, 1i), select(vec3<u32>(global1.x, global2.x, 1u), vec3<u32>(49469u, 37510u, 21601u), false))), -518f))), 969f, Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global1.x << (17604u % 32u), 12u)])), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 12u)]) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13114u, 12u)])))), select(vec2<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), !vec2<bool>(false, all(vec3<bool>(true, true, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), global2.x <= global2.x), vec2<bool>(true, any(vec4<bool>(true, false, true, true))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(-763f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 12u)])))))), !vec4<bool>(any(!var_0.c.a.b.yz), true, var_0.d.x, var_0.d.x), _wgslsmith_f_op_f32(sign(-267f)));
    var var_2 = select(!vec2<bool>(select(true, any(vec2<bool>(var_0.c.a.b.x, false)), all(var_1.b.xxx)), false), select(var_0.c.a.b.xy, vec2<bool>(any(var_1.b.yw), false), all(select(var_0.c.a.b, vec4<bool>(true, true, false, false), var_1.b)) & var_0.a.b.x), !select(select(vec2<bool>(false, var_0.c.a.b.x), vec2<bool>(var_0.d.x, var_0.a.b.x), select(false, true, var_0.c.a.b.x)), var_1.b.ww, !(!vec2<bool>(var_1.b.x, var_1.b.x))));
    var var_3 = var_2.x;
    let var_4 = Struct_5(var_0.c);
    return var_4;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = func_2();
    global2 = select(reverseBits(~select(vec2<u32>(global1.x, 1u), ~global1.xz, !vec2<bool>(arg_3.a.b.x, var_0.a.a.b.x))), global1.yy, all(arg_2));
    global1 = vec3<u32>(34949u, _wgslsmith_mult_u32(countOneBits(1u), global1.x), 12138u);
    global1 = vec3<u32>(_wgslsmith_div_u32(0u, 11919u), min(26984u, 0u), global1.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -498f);
    return -(vec3<i32>(-1i) * -(~vec3<i32>(2147483647i, -40173i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 605f;
    global0 = array<f32, 12>();
    let var_1 = ~(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), func_1(vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 12u)], var_0, global0[_wgslsmith_index_u32(u_input.a, 12u)]), 12898i, vec4<bool>(true, true, false, false), Struct_2(Struct_1(747f, vec4<bool>(false, false, true, false), var_0)))), -1i) << (25898u % 32u));
    global0 = array<f32, 12>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], -970f, var_0, -1491f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_0, global0[_wgslsmith_index_u32(global2.x, 12u)], var_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2101f, -639f, -360f, 1054f)), _wgslsmith_div_vec4_f32(vec4<f32>(145f, var_0, global0[_wgslsmith_index_u32(0u, 12u)], 2163f), vec4<f32>(-649f, var_0, -1365f, global0[_wgslsmith_index_u32(1u, 12u)]))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1.x, global1.x, global1.x, u_input.a) >> (vec4<u32>(global2.x, global1.x, global1.x, global1.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(38388u, u_input.a, 4294967295u, u_input.a) << (vec4<u32>(global2.x, u_input.a, u_input.a, 56394u) % vec4<u32>(32u)), ~vec4<u32>(global2.x, global1.x, global1.x, u_input.a))), 27005u, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(11980u, 0u)), ~(~30416u))));
}

