struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1;

var<private> global2: array<u32, 24> = array<u32, 24>(32773u, 83616u, 1u, 0u, 71333u, 1u, 64837u, 4294967295u, 8584u, 93921u, 4294967295u, 68698u, 9764u, 28504u, 5096u, 20099u, 0u, 22189u, 1u, 48472u, 4294967295u, 22571u, 76053u, 0u);

var<private> global3: array<u32, 29>;

var<private> global4: vec3<f32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = firstTrailingBit(~abs(max(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71003u, 24u)], 24u)], 1u) | vec3<u32>(global3[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)], 24u)], 4294967295u), vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 29u)], 41483u, 0u))));
    let var_1 = arg_1;
    return arg_1.a;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~u_input.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x), 444f, 1720f) * global1.a) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(arg_0, 24u)]), vec2<u32>(arg_0, 60600u)) | ~1u, Struct_1(_wgslsmith_f_op_vec4_f32(min(global1.a, vec4<f32>(-1271f, global4.x, 135f, global1.a.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> u32 {
    global4 = _wgslsmith_f_op_vec3_f32(round(arg_0.a.wyy));
    var var_0 = arg_0;
    var var_1 = vec4<bool>(!select(false, true, arg_1.x || false), false, true, _wgslsmith_f_op_f32(-625f - global1.a.x) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x + global4.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -295f), var_0.a.x)))));
    global4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-292f, 538f, var_0.a.x), vec3<f32>(arg_0.a.x, 1413f, 554f), var_1.x))) * _wgslsmith_f_op_vec3_f32(abs(var_0.a.wzz))) + global1.a.xzz)));
    let var_2 = vec2<u32>(reverseBits(18788u), 1u);
    return firstLeadingBit(104642u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    global1 = Struct_1(arg_3.a);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1679f - 816f))) < 491f;
    var var_1 = ~(~vec3<u32>(1u, ~4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u))) << (vec3<u32>(3118u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_4(func_2(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(54125u, 29u)]), 29u)]), select(!vec2<bool>(var_0, var_0), !vec2<bool>(false, var_0), false), countOneBits(-vec2<i32>(-322i, u_input.a))), 29u)], 29u)], global3[_wgslsmith_index_u32(countOneBits(select(global3[_wgslsmith_index_u32(arg_2, 29u)], arg_2, false) << (~arg_2 % 32u)), 29u)]) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(arg_3.a.x * global1.a.x);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_2(~(~select(18504u, 1u, false))).a;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-486f, _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(func_1(Struct_1(global1.a), Struct_1(global1.a), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], Struct_1(global1.a)))), global4.x, global4.x))), func_2(global3[_wgslsmith_index_u32(1u, 29u)]), func_2(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(1u, abs(4294967295u))), 29u)], 24u)], 24u)], 29u)]), _wgslsmith_div_vec3_i32(countOneBits(~(~vec3<i32>(-13823i, u_input.a, u_input.a))), select(-vec3<i32>(-21810i, -2147483647i, 19063i), select(firstTrailingBit(vec3<i32>(0i, u_input.a, u_input.a)), vec3<i32>(2147483647i, u_input.a, 17418i) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], 0u, 32745u) % vec3<u32>(32u)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), true && all(vec3<bool>(true, true, false)))));
    let var_1 = abs(~vec3<u32>(~global3[_wgslsmith_index_u32(5552u, 29u)], 1u ^ global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81462u, 24u)], 29u)], 1u >> (global2[_wgslsmith_index_u32(4294967295u, 24u)] % 32u))) << (~(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)]) << (vec3<u32>(19460u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 24u)], 24u)], 11560u) % vec3<u32>(32u)), vec3<u32>(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5826u, 24u)], 29u)], 24u)], 29u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 24u)]) << (vec3<u32>(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37190u, 24u)], 29u)], 63564u) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(766f - -2152f) - _wgslsmith_f_op_vec4_f32(func_3(var_1.x, Struct_1(global1.a))).x), _wgslsmith_f_op_f32(floor(-1226f)), _wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)), 1297f))));
    global2 = array<u32, 24>();
    global2 = array<u32, 24>();
    var_0 = func_2(0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(max(var_0.a.x, 1953f))), _wgslsmith_f_op_f32(global4.x - global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-191f)))), global4.x), global4.x, -_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, 90i, u_input.a) ^ -vec3<i32>(-1i, -78593i, 8343i), -countOneBits(vec3<i32>(-7269i, 14123i, -1i)), vec3<i32>(~(-1i), u_input.a >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)] % 32u), 28938i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 8246i), vec3<i32>(u_input.a, -2147483647i, 34754i), vec3<i32>(u_input.a, 1i, 1i)), vec3<i32>(reverseBits(-1989i), -2147483647i, -25538i)), abs(max(~vec3<i32>(u_input.a, -11397i, u_input.a), min(vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(u_input.a, 10513i, 40714i))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(13619u, Struct_1(vec4<f32>(178f, -968f, global4.x, 1021f)))).x), 181f)));
}

