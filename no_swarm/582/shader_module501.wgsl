struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, vec4<i32>(2147483647i, 1i, -3857i, -31571i), vec2<i32>(11378i, i32(-2147483648))));

var<private> global1: u32;

var<private> global2: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    global2 = u_input.c.x;
    let var_0 = u_input.a.x;
    var var_1 = Struct_2(global0.a);
    let var_2 = vec4<u32>(var_1.a.a, global0.a.a, (51623u >> (0u % 32u)) | _wgslsmith_clamp_u32(~var_0, 1010u, 55022u), ~u_input.a.x | u_input.a.x);
    let var_3 = var_2.x;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~var_2.xxz, vec3<u32>(1u, u_input.a.x, var_0)) >> (var_3 % 32u), _wgslsmith_sub_u32(~134585u, ~4294967295u)) | (reverseBits(var_1.a.a) << (1u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_2 {
    global1 = min(~global0.a.a, func_3(Struct_2(global0.a), vec3<f32>(_wgslsmith_f_op_f32(1262f - 1107f), 997f, _wgslsmith_f_op_f32(-1377f + 854f))) & arg_1);
    global1 = _wgslsmith_div_u32(min(~u_input.a.x ^ ~global0.a.a, ~27569u), 4294967295u);
    var var_0 = select(true, arg_3, true);
    let var_1 = all(vec2<bool>(~arg_0.a > firstLeadingBit(arg_1), false || !arg_3)) | (all(!(!vec4<bool>(arg_3, true, arg_3, false))) && true);
    var var_2 = ~vec3<i32>(~(~0i ^ abs(arg_0.b.x)), _wgslsmith_div_i32(2147483647i, ~(arg_2 >> (arg_0.a % 32u))), abs(_wgslsmith_dot_vec2_i32(arg_0.b.wz, ~vec2<i32>(2147483647i, arg_2))));
    return Struct_2(Struct_1(abs(1u), u_input.b, -vec2<i32>(global0.a.c.x, 2147483647i) & -min(global0.a.c, vec2<i32>(0i, 45150i))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    global0 = func_2(global0.a, arg_1.a, arg_1.c.x, true);
    var var_0 = vec2<f32>(-586f, arg_0);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1392f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))))) - arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) - 1f))));
    global1 = ~select(u_input.a.x, select(u_input.a.x, firstTrailingBit(92201u), !(68058u < u_input.a.x)), false);
    let var_1 = func_2(Struct_1(select(~u_input.a.x, 1u, true), arg_1.b << (vec4<u32>(u_input.a.x, u_input.a.x & 3220u, 16727u, arg_1.a) % vec4<u32>(32u)), ~(~vec2<i32>(global0.a.c.x, global0.a.b.x))), global0.a.a, 0i, false);
    return firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_1.b.zzx, vec3<i32>(1i ^ arg_1.b.x, ~(-2147483647i), -1i)), _wgslsmith_sub_i32(~(-global0.a.b.x), max(arg_1.b.x, _wgslsmith_add_i32(arg_1.b.x, var_1.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !(true & (select(u_input.b.x, _wgslsmith_mult_i32(global0.a.c.x, u_input.c.x), false) != func_1(-1263f, global0.a)));
    var var_1 = vec2<u32>(firstTrailingBit(min(global0.a.a, 4294967295u)), ~func_3(func_2(global0.a, ~global0.a.a, 0i, true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-537f, 775f, 140f) + vec3<f32>(-553f, 954f, -955f))))));
    var_1 = firstTrailingBit(firstTrailingBit(~(vec2<u32>(u_input.a.x, var_1.x) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)))));
    let var_2 = Struct_2(func_2(func_2(func_2(Struct_1(4294967295u, u_input.b, u_input.b.zy), ~0u, u_input.c.x, true).a, min(23812u, firstLeadingBit(global0.a.a)), -u_input.c.x, all(vec3<bool>(false, true, true))).a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.a.a), vec2<u32>(1u, min(10701u, 12552u))), -28582i, true).a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1878f + -1201f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1389f * -191f))) + _wgslsmith_f_op_f32(889f * -157f)))));
    var var_4 = select(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true)), vec3<bool>((var_2.a.a <= _wgslsmith_div_u32(var_2.a.a, 57529u)) & (true | any(vec4<bool>(true, true, true, true))), true || all(vec3<bool>(true, false, true)), !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)))), vec3<bool>(true, !(true && (0i == global0.a.c.x)), any(vec4<bool>(true, true, true, true))));
    var_4 = vec3<bool>(false, abs(-37703i) != _wgslsmith_mult_i32(~(-47048i), _wgslsmith_sub_i32(~2147483647i, _wgslsmith_add_i32(-23018i, u_input.c.x))), all(!var_4.xz) || false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -2008f, -372f, -1038f), vec4<f32>(172f, -834f, 748f, -929f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-952f, 380f, -1163f, 354f) + vec4<f32>(405f, -1000f, 1130f, 300f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(274f + -2448f), _wgslsmith_f_op_f32(-1318f - 1338f), _wgslsmith_f_op_f32(f32(-1f) * -833f), 1000f)))));
}

