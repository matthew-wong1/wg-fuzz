struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 29> = array<i32, 29>(-32374i, 1i, 2147483647i, -6527i, 1i, -14473i, 2147483647i, 17099i, 12504i, 1i, i32(-2147483648), -1i, 40341i, 27163i, 17603i, 36366i, 3174i, 2147483647i, 25476i, -54680i, -28109i, i32(-2147483648), 9396i, -1i, -3194i, 2147483647i, 0i, i32(-2147483648), -45931i);

var<private> global2: array<i32, 5> = array<i32, 5>(-1i, 0i, i32(-2147483648), 22781i, 6569i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = vec3<f32>(-1411f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), 1264f), _wgslsmith_f_op_f32(step(-1120f, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + global0.x))))))));
    global1 = array<i32, 29>();
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(553f, 365f))))))));
    let var_1 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_0, -201i), vec3<i32>(1i, abs(-u_input.b), u_input.b), ~_wgslsmith_mult_vec3_i32(abs(abs(vec3<i32>(13292i, 2147483647i, -1i))), select(vec3<i32>(arg_0, 2147483647i, u_input.b), vec3<i32>(-17609i, -1i, global1[_wgslsmith_index_u32(12327u, 29u)]), vec3<bool>(true, true, true))));
    let var_2 = vec4<i32>(u_input.b, _wgslsmith_div_i32(-firstTrailingBit(u_input.b), arg_0) | 0i, -20943i, _wgslsmith_sub_i32(~global2[_wgslsmith_index_u32(10903u, 5u)] & (-61797i & u_input.b), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(~1u, 29u)], global2[_wgslsmith_index_u32(79423u, 5u)])) | -2147483647i);
    return all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false)) == all(vec2<bool>(false, false))));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(round(arg_0.a));
    var var_0 = vec2<bool>(true, (func_3(arg_1, _wgslsmith_div_f32(arg_0.a.x, -1000f)) | arg_0.c) & all(!vec2<bool>(true, arg_0.c)));
    var var_1 = vec3<i32>(22800i, arg_0.b.x | _wgslsmith_add_i32(-1i, 2147483647i), arg_0.b.x);
    var var_2 = arg_0.c;
    let var_3 = -1067i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a, vec2<f32>(global0.x, global0.x)), arg_0.a)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global0 = vec2<f32>(global0.x, 678f);
    global1 = array<i32, 29>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2(Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-418f, _wgslsmith_f_op_f32(global0.x - 1197f)), vec2<f32>(-1054f, -658f), !arg_0)), ~(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 5u)], -1i)), !arg_0.x), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.d << (vec3<u32>(4294967295u, 1u, 23689u) % vec3<u32>(32u)), max(u_input.d | vec3<u32>(u_input.d.x, u_input.a, 1u), u_input.d ^ u_input.d)), 5u)]));
    let var_1 = _wgslsmith_clamp_vec4_i32(countOneBits(firstTrailingBit(~vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(1u, 5u)], u_input.b, u_input.b) >> (vec4<u32>(4311u, 4294967295u, u_input.a, u_input.c) % vec4<u32>(32u)))), vec4<i32>(-64685i, min(-1i, 2147483647i), -global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 27586u)), 5u)], -(~u_input.b)), min(vec4<i32>(1i, countOneBits(global1[_wgslsmith_index_u32(u_input.c, 29u)]), ~(-2147483647i), 2147483647i), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.c, 29u)], 39677i, u_input.b), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], -2147483647i, -29301i, 37668i)))));
    let var_2 = _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.d.x, u_input.c)), ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(33960u, u_input.d.x) ^ vec2<u32>(24837u, 1u), ~vec2<u32>(u_input.c, 85039u)) >> (u_input.d.zx % vec2<u32>(32u))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-377f, -479f), vec2<f32>(global0.x, -1575f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(-447f, -1661f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, -2097f) - vec2<f32>(245f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.x)), u_input.d.x <= u_input.d.x))))), select((var_1.yz >> (_wgslsmith_sub_vec2_u32(u_input.d.yz, u_input.d.yz) % vec2<u32>(32u))) >> (firstLeadingBit(vec2<u32>(62u, var_2)) % vec2<u32>(32u)), var_1.xz, !(!(!vec2<bool>(arg_0.x, arg_0.x)))), select(arg_0.x, true, true));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3.c;
    let var_1 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, _wgslsmith_div_u32(1u << (u_input.a % 32u), ~u_input.c), 1u, firstTrailingBit(u_input.a))), vec4<u32>(~(~(u_input.c & 46770u)), 18786u, _wgslsmith_dot_vec2_u32(select(u_input.d.xy, min(vec2<u32>(u_input.c, u_input.c), u_input.d.zx), select(vec2<bool>(true, arg_3.c), vec2<bool>(false, false), vec2<bool>(arg_3.c, true))), vec2<u32>(u_input.a & 1u, u_input.a << (1783u % 32u))), 4294967295u));
    global0 = arg_3.a;
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-562f, 557f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-752f, 112f) * arg_1.zx), _wgslsmith_f_op_vec2_f32(-arg_1.zz), true))) * arg_3.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a + vec2<f32>(arg_0.a.x, -1668f))))), arg_3.c & (_wgslsmith_f_op_vec2_f32(func_2(arg_0, 1i)).x < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-238f)))))));
    var_0 = arg_3.c;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, -1000f) + 1f))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 12541u;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 172f, global0.x)))), ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -24585i, 98061i) << (vec3<u32>(35638u, var_0, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.b, 2147483647i, u_input.b), firstTrailingBit(vec3<i32>(11982i, global1[_wgslsmith_index_u32(var_0, 29u)], 2147483647i))) ^ vec3<i32>(~u_input.b, u_input.b, select(-1i, -1i, false))), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2094f) * vec2<f32>(335f, -1800f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, -402f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x))))), _wgslsmith_add_vec2_i32(func_1(vec2<bool>(true, true)).b, vec2<i32>(-23164i, -34091i) >> (~vec2<u32>(var_0, var_0) % vec2<u32>(32u))), !all(vec4<bool>(false, false, true, true)))));
    let var_2 = Struct_2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f))), _wgslsmith_div_vec2_i32(~vec2<i32>(-18936i, func_1(vec2<bool>(true, false)).b.x), abs(firstTrailingBit(vec2<i32>(35883i, 33112i))) << (vec2<u32>(_wgslsmith_add_u32(u_input.d.x, var_0), 48651u) % vec2<u32>(32u))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, false))), vec3<bool>(true, any(vec3<bool>(false, true, false)), global2[_wgslsmith_index_u32(var_0, 5u)] > u_input.b), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), false))));
    var var_3 = ~vec4<u32>(u_input.d.x, ~abs(0u), var_0, _wgslsmith_dot_vec2_u32(u_input.d.xy, countOneBits(firstTrailingBit(vec2<u32>(var_0, u_input.c)))));
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer((u_input.d.yx >> (var_3.ww % vec2<u32>(32u))) ^ u_input.d.yz, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 5u)], var_2.b.x, var_2.b.x, 1i) << (abs(vec4<u32>(0u, 1u, 0u, u_input.d.x)) % vec4<u32>(32u)), -vec4<i32>(global2[_wgslsmith_index_u32(var_0, 5u)], u_input.b, 19041i, 37949i)), -firstLeadingBit(select(vec4<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.a, 29u)], var_2.b.x), vec4<i32>(-66349i, 0i, -19242i, -49105i), vec4<bool>(true, true, true, true)))));
}

