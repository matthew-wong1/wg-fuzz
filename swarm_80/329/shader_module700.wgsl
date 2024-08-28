struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: vec3<u32> = vec3<u32>(42682u, 39420u, 1u);

var<private> global2: array<i32, 20> = array<i32, 20>(5557i, -2849i, 12176i, -54678i, -28422i, -1i, -22494i, 2147483647i, -19439i, 33437i, 2147483647i, -59804i, 2147483647i, 4545i, 27297i, 56516i, -31312i, 4187i, -4845i, -23727i);

var<private> global3: array<i32, 28>;

var<private> global4: array<bool, 7>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    global2 = array<i32, 20>();
    var var_0 = -476f;
    global3 = array<i32, 28>();
    let var_1 = global2[_wgslsmith_index_u32(abs(~(~(~0u))) << ((arg_0.a.b.x >> (~arg_0.a.b.x % 32u)) % 32u), 20u)];
    global1 = vec3<u32>(~(~(~arg_0.a.b.x)), max(41296u, ~37376u), reverseBits(arg_3.a.b.x)) & ~_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(global1.x, 57372u, 0u)), reverseBits(max(vec3<u32>(68287u, arg_3.a.b.x, global1.x), vec3<u32>(arg_3.a.a, 65077u, arg_0.a.b.x))), max(abs(vec3<u32>(arg_3.a.b.x, arg_0.a.b.x, 48834u)), max(vec3<u32>(0u, arg_3.a.a, arg_3.a.a), vec3<u32>(51726u, arg_3.a.a, global1.x))));
    return arg_3.a.b.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = firstLeadingBit(-2147483647i);
    let var_1 = Struct_2(Struct_1(44253u, vec2<u32>(61821u, select(~arg_0, ~1u, any(vec3<bool>(false, global4[_wgslsmith_index_u32(global1.x, 7u)], global4[_wgslsmith_index_u32(0u, 7u)]))))));
    global1 = vec3<u32>(func_3(var_1, -1487f, select(select(select(vec2<bool>(global4[_wgslsmith_index_u32(11380u, 7u)], false), vec2<bool>(true, global4[_wgslsmith_index_u32(global1.x, 7u)]), true), !vec2<bool>(true, global4[_wgslsmith_index_u32(45675u, 7u)]), true), vec2<bool>(global4[_wgslsmith_index_u32(1u, 7u)], true), vec2<bool>(true, true)), Struct_2(var_1.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(~57495u, _wgslsmith_dot_vec3_u32(vec3<u32>(12810u, arg_0, arg_0), vec3<u32>(0u, 0u, var_1.a.a)), 29661u, reverseBits(arg_0)), vec4<u32>(select(global1.x, ~0u, global4[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_div_u32(var_1.a.b.x, 39420u), min(_wgslsmith_add_u32(37679u, global1.x), _wgslsmith_mod_u32(4294967295u, var_1.a.b.x)), 1262u)), var_1.a.a ^ select(arg_0, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a, var_1.a.b.x, var_1.a.b.x, 86775u), vec4<u32>(var_1.a.b.x, 0u, 13532u, arg_0)), !(!global4[_wgslsmith_index_u32(26508u, 7u)])));
    var var_2 = var_1;
    return u_input.a.x;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: u32) -> vec2<bool> {
    global3 = array<i32, 28>();
    let var_0 = ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(~(global1.x & arg_2)), arg_2), 28u)];
    let var_1 = Struct_1(arg_2, vec2<u32>(58463u, 63944u));
    var var_2 = select(vec3<bool>(all(arg_1.wzx), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1489f - -1000f) - _wgslsmith_f_op_f32(max(-1519f, -1567f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1157f)))), !(!vec3<bool>(arg_1.x, global4[_wgslsmith_index_u32(0u, 7u)], any(vec2<bool>(global4[_wgslsmith_index_u32(arg_2, 7u)], global4[_wgslsmith_index_u32(49493u, 7u)])))), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(364f, 1000f))))) * _wgslsmith_f_op_f32(sign(1f))));
    return !select(select(vec2<bool>(true, true), select(vec2<bool>(var_2.x, true), vec2<bool>(false, false), false), !select(var_2.zz, var_2.xz, true)), select(select(select(var_2.yx, vec2<bool>(var_2.x, false), true), vec2<bool>(arg_1.x, var_2.x), !global4[_wgslsmith_index_u32(0u, 7u)]), !arg_1.xw, vec2<bool>(false, var_2.x)), arg_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    global3 = array<i32, 28>();
    let var_0 = -(~select(vec4<i32>(-55192i, u_input.a.x, -2147483647i, -1i), ~(-vec4<i32>(u_input.a.x, u_input.a.x, global3[_wgslsmith_index_u32(25292u, 28u)], 0i)), false));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(675f, -1739f, arg_1.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-540f, _wgslsmith_f_op_f32(-288f - 229f), _wgslsmith_f_op_f32(f32(-1f) * -1237f)))))));
    var var_2 = arg_0;
    let var_3 = select(!(!select(!vec3<bool>(global4[_wgslsmith_index_u32(global1.x, 7u)], false, global4[_wgslsmith_index_u32(var_2.a, 7u)]), select(vec3<bool>(arg_2.x, arg_2.x, global4[_wgslsmith_index_u32(global1.x, 7u)]), vec3<bool>(global4[_wgslsmith_index_u32(14698u, 7u)], arg_2.x, true), false), arg_2.x | true)), select(!(!select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 7u)], arg_2.x, global4[_wgslsmith_index_u32(49307u, 7u)]), vec3<bool>(false, false, false), false)), vec3<bool>(any(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(4294967295u, 7u)], true)), func_4(var_0.x, !vec4<bool>(false, arg_2.x, global4[_wgslsmith_index_u32(1u, 7u)], arg_2.x), global1.x).x, arg_2.x), select(vec3<bool>(true, !arg_2.x, any(vec4<bool>(false, false, global4[_wgslsmith_index_u32(23326u, 7u)], true))), vec3<bool>(-1208f >= var_1.x, true, arg_2.x), global4[_wgslsmith_index_u32(0u ^ firstTrailingBit(47722u), 7u)])), select(vec3<bool>(true, true, true), !(!(!vec3<bool>(false, false, arg_2.x))), vec3<bool>(all(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(7183u, 7u)], global4[_wgslsmith_index_u32(global1.x, 7u)])), global4[_wgslsmith_index_u32(arg_0.b.x ^ arg_0.a, 7u)] | (var_0.x == -2147483647i), (arg_2.x & arg_2.x) || !arg_2.x)));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32) -> i32 {
    let var_0 = vec3<f32>(-296f, _wgslsmith_f_op_f32(f32(-1f) * -2775f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(312f, 187f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2138f), _wgslsmith_f_op_f32(sign(-1137f)))), -1360f)));
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(20879u) >> (_wgslsmith_div_u32(arg_1, reverseBits(_wgslsmith_mod_u32(61760u, 1u))) % 32u), arg_1);
    let var_2 = Struct_2(func_5(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(39470u, 1u, var_1), vec3<u32>(global1.x, 22050u, arg_1)), vec2<u32>(1u, abs(0u))), _wgslsmith_f_op_vec3_f32(exp2(var_0)), select(func_4(func_2(25185u, -1122f), select(vec4<bool>(true, true, true, true), vec4<bool>(global4[_wgslsmith_index_u32(var_1, 7u)], false, global4[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(arg_1, 7u)]), vec4<bool>(global4[_wgslsmith_index_u32(var_1, 7u)], true, true, false)), 15545u), select(vec2<bool>(true, global4[_wgslsmith_index_u32(arg_1, 7u)]), !vec2<bool>(global4[_wgslsmith_index_u32(28069u, 7u)], true), select(vec2<bool>(true, true), vec2<bool>(global4[_wgslsmith_index_u32(45497u, 7u)], global4[_wgslsmith_index_u32(158099u, 7u)]), global4[_wgslsmith_index_u32(1u, 7u)])), false & (global4[_wgslsmith_index_u32(global1.x, 7u)] || global4[_wgslsmith_index_u32(1u, 7u)]))));
    global2 = array<i32, 20>();
    let var_3 = u_input.a.x;
    return ~global3[_wgslsmith_index_u32(63354u, 28u)];
}

fn func_6(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_5(Struct_1(min(firstTrailingBit(_wgslsmith_div_u32(73564u, 44201u)), firstTrailingBit(min(9280u, global1.x))), ~global1.zz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec2<bool>(!global4[_wgslsmith_index_u32((global1.x >> (global1.x % 32u)) << (firstTrailingBit(global1.x) % 32u), 7u)], any(vec2<bool>(global4[_wgslsmith_index_u32(global1.x, 7u)], global4[_wgslsmith_index_u32(0u, 7u)] | global4[_wgslsmith_index_u32(39166u, 7u)]))));
    let var_1 = func_5(func_5(func_5(Struct_1(max(var_0.b.x, 1u), ~vec2<u32>(global1.x, 0u)), vec3<f32>(1f, 1f, 1f), vec2<bool>(8022u >= var_0.a, !global4[_wgslsmith_index_u32(var_0.b.x, 7u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1348f), _wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(1000f - -696f))), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_f_op_f32(673f * 1523f), _wgslsmith_f_op_f32(min(-1540f, 340f))))), !(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(4294967295u, 7u)])));
    let var_2 = _wgslsmith_f_op_f32(trunc(-637f));
    var var_3 = Struct_2(func_5(func_5(Struct_1(_wgslsmith_sub_u32(var_1.b.x, 10081u), abs(vec2<u32>(30117u, 73879u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-526f, -846f, 1000f)))), vec2<bool>(false, any(vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 2058f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, -1000f, -228f)))))), vec2<bool>(global4[_wgslsmith_index_u32(var_0.a, 7u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(8823u, 32828u, var_1.b.x), select(vec3<u32>(global1.x, var_0.a, 25088u), vec3<u32>(105091u, 4294967295u, 4294967295u), true)), 7u)])));
    let var_4 = vec3<bool>(!(!global4[_wgslsmith_index_u32(var_0.b.x, 7u)]), !(any(select(vec2<bool>(global4[_wgslsmith_index_u32(global1.x, 7u)], global4[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(global4[_wgslsmith_index_u32(var_1.b.x, 7u)], false), vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 7u)]))) && true), !global4[_wgslsmith_index_u32(firstTrailingBit(~firstTrailingBit(17136u)), 7u)]);
    return Struct_2(func_5(Struct_1(_wgslsmith_mod_u32(42787u >> (var_3.a.a % 32u), var_1.a), firstTrailingBit(vec2<u32>(var_3.a.a, 40983u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(300f, var_2, var_2))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1072f, -1818f, var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(145f, -377f, -410f)))), var_4)), var_4.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1498f) + -185f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1540f + _wgslsmith_div_f32(-1825f, -994f)))))), -120f));
    global3 = array<i32, 28>();
    global1 = ~(((~vec3<u32>(4294967295u, global1.x, global1.x) << (~vec3<u32>(global1.x, global1.x, 1u) % vec3<u32>(32u))) | select(vec3<u32>(1u, global1.x, 0u) ^ vec3<u32>(global1.x, global1.x, 4294967295u), countOneBits(vec3<u32>(9199u, global1.x, 105112u)), global4[_wgslsmith_index_u32(global1.x, 7u)])) | ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, 3804u), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 4294967295u, global1.x), vec3<u32>(global1.x, global1.x, global1.x)), vec3<u32>(0u, global1.x, global1.x) >> (vec3<u32>(global1.x, global1.x, 26191u) % vec3<u32>(32u))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~0u, global1.x), ~vec2<u32>(1u, global1.x));
    global1 = vec3<u32>(~var_1.a, 84293u, select(var_1.b.x, 21044u, true));
    let var_2 = func_6(vec3<i32>(-1i) * -vec3<i32>(func_1(global3[_wgslsmith_index_u32(var_1.b.x, 28u)], global1.x, 18668i), abs(global3[_wgslsmith_index_u32(var_1.b.x, 28u)]), ~25047i));
    global2 = array<i32, 20>();
    global0 = abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1.x, var_1.a, 61784u)) & ~vec3<u32>(var_2.a.a, var_2.a.a, global1.x), firstTrailingBit(~abs(vec3<u32>(0u, var_2.a.a, 88554u)))));
    var var_3 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i ^ _wgslsmith_add_i32(-func_2(var_2.a.a, -942f), global2[_wgslsmith_index_u32(4294967295u, 20u)] >> (var_1.a % 32u)));
}

