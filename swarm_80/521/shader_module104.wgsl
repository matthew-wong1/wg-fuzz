struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: vec3<i32> = vec3<i32>(16151i, -17923i, -15228i);

var<private> global2: f32 = -489f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global1 = firstLeadingBit(vec3<i32>(countOneBits(abs(global1.x) >> (firstTrailingBit(1u) % 32u)), 26097i, ~firstTrailingBit(firstTrailingBit(46133i))));
    global2 = _wgslsmith_f_op_f32(ceil(-249f));
    var var_0 = vec4<bool>((any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 3u)], false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), true)) & true) && any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] || false, global0[_wgslsmith_index_u32(~4294967295u, 3u)], true)), true, false, !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1859f)), -1754f, global0[_wgslsmith_index_u32(~1u, 3u)])) <= 579f));
    global2 = 1f;
    let var_1 = Struct_2(select(vec4<bool>(true, var_0.x, true, !any(vec3<bool>(var_0.x, false, global0[_wgslsmith_index_u32(30946u, 3u)]))), !(!vec4<bool>(var_0.x, false, false, var_0.x)), any(select(vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(10098u, 3u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), false), !var_0.x))), Struct_1(vec4<u32>(~(u_input.a.x >> (57771u % 32u)), 59889u, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), u_input.a.x), -1000f, any(vec4<bool>(all(var_0.yy), true, true, global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 3u)])), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1109f, -1701f))))))), u_input.a.x, ~(~_wgslsmith_sub_vec2_i32(global1.zz, vec2<i32>(-1i, -1i))));
    return -select(-(firstLeadingBit(global1.x) >> (u_input.a.x % 32u)), 1i, !(!(!var_1.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_1.c;
    var var_2 = var_1.c;
    let var_3 = func_3();
    var_2 = arg_1.c.b.a.x;
    return Struct_1(var_1.b.a >> ((var_1.b.a << (vec4<u32>(countOneBits(arg_1.c.b.a.x), _wgslsmith_div_u32(var_1.b.a.x, var_1.c), 6778u >> (arg_1.c.c % 32u), arg_1.c.c) % vec4<u32>(32u))) % vec4<u32>(32u)), 1000f, !(u_input.a.x > (_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 1u) >> (select(4294967295u, 36718u, global0[_wgslsmith_index_u32(1u, 3u)]) % 32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b) + 164f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(min(-699f, _wgslsmith_f_op_f32(-arg_1.a))))));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = func_2(select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)]), all(arg_0.c.a.zww)), arg_0.c.a.yw, _wgslsmith_f_op_f32(round(1527f)) <= 1337f), arg_0, _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, firstTrailingBit(global1.x)), -2147483647i & min(global1.x, global1.x))).c | true;
    var var_1 = vec3<f32>(-952f, 577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.d.x, -417f, false)) - arg_0.b.b) + _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(trunc(arg_0.b.b)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.b.b, var_1.x, -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2119f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 677f, var_1.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1488f, 123f, -1421f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.b.d.x, var_1.x, func_2(vec2<bool>(false, false), Struct_3(var_1.x, arg_0.b, arg_0.c), arg_0.c.d.x).d.x))));
    global0 = array<bool, 3>();
    return !select(arg_0.c.a.xww, !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c.c, 3u)], true, true), !arg_0.c.a.xzx, true), arg_0.c.a.wwy);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: i32) -> vec3<bool> {
    return !func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - 397f), func_2(select(arg_2.zx, vec2<bool>(false, false), global0[_wgslsmith_index_u32(13290u, 3u)]), Struct_3(-706f, Struct_1(vec4<u32>(74858u, 46741u, 4294967295u, u_input.a.x), arg_0, global0[_wgslsmith_index_u32(4294967295u, 3u)], vec2<f32>(1848f, -564f)), Struct_2(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true), Struct_1(vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), -1364f, true, vec2<f32>(-666f, -278f)), u_input.a.x, vec2<i32>(arg_1.x, arg_3))), global1.x), Struct_2(vec4<bool>(true, arg_2.x, arg_2.x, false), Struct_1(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), -1656f, false, vec2<f32>(arg_0, -104f)), ~u_input.a.x, abs(arg_1.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1194f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - -660f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -244f))))) * _wgslsmith_f_op_f32(f32(-1f) * -1526f))));
    let var_0 = vec4<f32>(-432f, -1269f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(860f)) - _wgslsmith_f_op_f32(f32(-1f) * -780f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = select(vec3<bool>(false, all(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, !global0[_wgslsmith_index_u32(7528u, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 3u)])), (abs(u_input.a.x) | _wgslsmith_mult_u32(u_input.a.x, 4294967295u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a.x), min(vec3<u32>(113876u, 15120u, u_input.a.x), u_input.a))), select(vec3<bool>(false, any(select(vec4<bool>(global0[_wgslsmith_index_u32(5050u, 3u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 3u)]))), true), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(105131u, 3u)]), vec3<bool>(true, false || global0[_wgslsmith_index_u32(u_input.a.x, 3u)], true), func_1(_wgslsmith_f_op_f32(round(597f)), vec3<i32>(global1.x, -2147483647i, global1.x), vec3<bool>(global0[_wgslsmith_index_u32(27935u, 3u)], true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), ~0i)), 1i > global1.x), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(countOneBits(1u)), ~(~u_input.a.x)), 3u)], ((global1.x >> (4294967295u % 32u)) < firstTrailingBit(global1.x)) == false, any(!(!vec3<bool>(global0[_wgslsmith_index_u32(39234u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)])))));
    let var_2 = -_wgslsmith_clamp_i32(0i, 1i | _wgslsmith_div_i32(min(global1.x, 8408i), global1.x), ~1i);
    var var_3 = func_2(func_1(-1464f, vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2, 1i, -1i), vec3<i32>(global1.x, 2147483647i, var_2)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, global1.x, -32827i), vec3<i32>(global1.x, global1.x, 0i))), -1892i), vec3<bool>(true, select(all(var_1.yz), true, true), global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), ~_wgslsmith_clamp_i32(1i, ~global1.x, _wgslsmith_clamp_i32(-1i, 1i, 2147483647i))).zx, Struct_3(var_0.x, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), abs(vec4<u32>(0u, u_input.a.x, 4294967295u, 15785u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-617f + var_0.x), var_0.x, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false)))), !(!var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2798f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -534f) + vec2<f32>(var_0.x, var_0.x)))), Struct_2(select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 3u)], var_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(46834u, 3u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), false), vec4<bool>(var_1.x, false, false, false), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], true, true), vec4<bool>(var_1.x, var_1.x, true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))), Struct_1(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 66309u)), -1000f, func_2(var_1.zz, Struct_3(var_0.x, Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u), 1000f, global0[_wgslsmith_index_u32(4294967295u, 3u)], var_0.yz), Struct_2(vec4<bool>(false, var_1.x, var_1.x, false), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec2<f32>(var_0.x, -431f)), 59561u, vec2<i32>(var_2, -1i))), global1.x).c, var_0.ww), 53919u, global1.zz)), var_2);
    let var_4 = global1.x;
    global1 = (vec3<i32>(1i, abs(-25914i) << (~var_3.a.x % 32u), -1i) >> (select(u_input.a, u_input.a, func_1(_wgslsmith_f_op_f32(f32(-1f) * -476f), reverseBits(vec3<i32>(global1.x, -1i, global1.x)), vec3<bool>(var_3.c, false, true), 2147483647i)) % vec3<u32>(32u))) & vec3<i32>(-2147483647i, min(_wgslsmith_mult_i32(-1i, global1.x) >> (~849u % 32u), _wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.x, global1.x, var_2), 0i)), 1i);
    var_3 = func_2(vec2<bool>(var_3.c, any(var_1.yz)), Struct_3(_wgslsmith_f_op_f32(abs(-1717f)), Struct_1(select(~var_3.a, firstTrailingBit(var_3.a), any(vec3<bool>(var_1.x, var_1.x, var_1.x))), var_3.d.x, var_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2234f, var_3.b) - vec2<f32>(938f, 233f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(134f, var_0.x))))), Struct_2(select(select(vec4<bool>(true, var_3.c, var_3.c, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false, var_1.x, global0[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(true, var_1.x, true, true)), vec4<bool>(true, var_3.c, var_3.c, var_1.x), !vec4<bool>(true, false, var_1.x, var_1.x)), func_2(vec2<bool>(var_1.x, true), Struct_3(-145f, Struct_1(var_3.a, var_0.x, var_3.c, var_3.d), Struct_2(vec4<bool>(true, var_3.c, var_3.c, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), Struct_1(vec4<u32>(var_3.a.x, u_input.a.x, 880u, 0u), var_3.d.x, global0[_wgslsmith_index_u32(var_3.a.x, 3u)], var_0.zw), 4294967295u, vec2<i32>(var_2, 2147483647i))), ~(-2147483647i)), 0u >> (~4294967295u % 32u), ~vec2<i32>(global1.x, global1.x) ^ ~vec2<i32>(2147483647i, var_2))), 979i);
    var_1 = func_4(Struct_3(-671f, Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(20950u, 30667u, var_3.a.x, 30576u), var_3.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-302f, var_0.x)), true, var_0.yz), Struct_2(select(!vec4<bool>(var_3.c, var_3.c, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_1.x, var_3.c, true), vec4<bool>(var_1.x, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_3.a.x, 3u)], var_1.x, false, false)), var_1.x), func_2(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global0[_wgslsmith_index_u32(531u, 3u)]), var_1.zz, false), Struct_3(322f, Struct_1(var_3.a, 175f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], var_0.yz), Struct_2(vec4<bool>(var_3.c, var_3.c, false, false), Struct_1(var_3.a, var_0.x, var_3.c, vec2<f32>(var_3.d.x, -504f)), u_input.a.x, vec2<i32>(-1i, global1.x))), global1.x), 58071u, abs(global1.xz))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * 933f));
}

