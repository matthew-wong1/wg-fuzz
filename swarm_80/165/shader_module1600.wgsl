struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(20323u, 32787u), vec2<u32>(37697u, 21203u), vec2<u32>(55856u, 1u), vec2<u32>(36530u, 56207u), vec2<u32>(0u, 12813u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(3595u, 4294967295u), vec2<u32>(4294967295u, 34829u), vec2<u32>(4294967295u, 2824u), vec2<u32>(2054u, 0u), vec2<u32>(23586u, 0u), vec2<u32>(6270u, 19927u), vec2<u32>(4294967295u, 29170u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(14380u, 4294967295u), vec2<u32>(66917u, 1u), vec2<u32>(10990u, 0u), vec2<u32>(16756u, 0u), vec2<u32>(4294967295u, 2919u), vec2<u32>(41306u, 0u), vec2<u32>(1u, 0u), vec2<u32>(27699u, 13420u), vec2<u32>(10300u, 4294967295u), vec2<u32>(4294967295u, 22896u), vec2<u32>(1u, 72968u), vec2<u32>(93978u, 1u), vec2<u32>(0u, 22820u), vec2<u32>(20979u, 23718u), vec2<u32>(1u, 24924u));

var<private> global1: vec2<f32> = vec2<f32>(431f, -296f);

var<private> global2: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(-7653i, -28811i), vec2<i32>(-24716i, 1i), vec2<i32>(-2050i, i32(-2147483648)), vec2<i32>(53954i, 2147483647i), vec2<i32>(-13876i, -66046i), vec2<i32>(i32(-2147483648), 53i), vec2<i32>(12047i, -1i), vec2<i32>(23270i, -1i), vec2<i32>(31035i, 2147483647i), vec2<i32>(-37156i, -8761i), vec2<i32>(1i, -27274i), vec2<i32>(-1i, 12301i), vec2<i32>(29884i, -16636i), vec2<i32>(1i, 5438i), vec2<i32>(-44580i, -13182i), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -1i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, -23770i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -36003i), vec2<i32>(i32(-2147483648), -8482i), vec2<i32>(-33270i, -5166i), vec2<i32>(14834i, -17347i), vec2<i32>(-1i, -14930i), vec2<i32>(i32(-2147483648), 0i));

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = select(-_wgslsmith_dot_vec3_i32(u_input.b.wyw, firstLeadingBit(u_input.b.zxx) >> ((vec3<u32>(0u, 68895u, u_input.a) | vec3<u32>(arg_2.c, 4294967295u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(max(reverseBits(vec3<i32>(-1i, 2147483647i, 2147483647i)), abs(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), abs(min(countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(u_input.b.x, -29400i, -23703i)))), select((i32(-1i) * -u_input.b.x) <= 9745i, arg_1.x, all(select(vec4<bool>(false, false, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), arg_1.x)) & arg_1.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1433f)) + global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x * -1315f)))));
    let var_2 = false;
    global2 = array<vec2<i32>, 28>();
    let var_3 = vec4<bool>(any(vec4<bool>(!var_2, arg_1.x, arg_1.x, !arg_1.x)), arg_1.x, !var_2, !arg_1.x);
    return var_1.x;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(344f, 1065f, global1.x, -1134f), vec4<f32>(global1.x, -136f, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 16u)]))) * global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, 4294967295u), 16u)]), vec4<f32>(_wgslsmith_f_op_f32(-570f * -864f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(19527u, 16u)] - vec4<f32>(global1.x, global1.x, -591f, global1.x)), vec3<bool>(true, true, true), Struct_1(87652u, global3[_wgslsmith_index_u32(u_input.a, 16u)], u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1120f))), -2002f)), max(~(abs(29234u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 48571u, 1u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)) % 32u)), abs(u_input.a)));
    let var_1 = Struct_1(17883u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.b)) - var_0.b), vec4<f32>(_wgslsmith_f_op_f32(1232f * 1378f), _wgslsmith_f_op_f32(ceil(991f)), _wgslsmith_f_op_f32(func_3(vec4<f32>(-884f, global1.x, -1562f, -1009f), vec3<bool>(false, true, false), Struct_1(4294967295u, vec4<f32>(174f, var_0.b.x, var_0.b.x, global1.x), 1u))), _wgslsmith_f_op_f32(sign(var_0.b.x)))))), _wgslsmith_div_u32(1u, ~min(var_0.c, 0u)));
    let var_2 = Struct_1(0u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1304f)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x)))), _wgslsmith_f_op_f32(-130f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.b.x)))))), var_1.c);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.x), var_1.b.x)) + _wgslsmith_f_op_f32(-678f + var_2.b.x));
    let var_4 = Struct_1(43989u ^ max((var_1.c & var_1.c) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(var_0.b.x - -535f))), var_2.b.x, _wgslsmith_div_f32(global1.x, var_0.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - 1116f)), 458f))), max(var_2.a, var_0.c));
    return _wgslsmith_add_u32(_wgslsmith_div_u32(0u, 1u), var_0.a);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = firstLeadingBit(vec4<u32>(~select(32762u, abs(arg_0.a), true), _wgslsmith_add_u32(func_2(), ~arg_0.c), 1u, func_2()));
    var var_2 = ~firstTrailingBit(select(var_1.zzx, var_1.yxz, !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    global1 = vec2<f32>(global1.x, 1581f);
    global3 = array<vec4<f32>, 16>();
    return Struct_1(_wgslsmith_sub_u32(1u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_1.x), global0[_wgslsmith_index_u32(1u, 32u)]) >> (86194u % 32u), reverseBits(firstTrailingBit(var_2.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 776f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - 161f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(803f, 780f)))) - global3[_wgslsmith_index_u32(1u, 16u)]), u_input.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global1.x;
    let var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), arg_0.b.x > arg_0.b.x, true), vec3<bool>(all(vec2<bool>(true, true)), false, arg_0.c < u_input.a)));
    var var_2 = Struct_1(min(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(47147u, arg_0.c), vec2<u32>(0u, u_input.a))), global3[_wgslsmith_index_u32(max(0u, u_input.a), 16u)], _wgslsmith_add_u32(arg_0.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 32u)], ~vec2<u32>(arg_0.c, 29366u)), vec2<u32>(~18632u, 89196u))));
    var var_3 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(32274u, var_2.c, arg_0.a), vec3<u32>(arg_0.a, 66300u, u_input.a), vec3<u32>(var_2.c, 13827u, var_2.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(3973u, 46947u, 0u), vec3<u32>(u_input.a, var_2.a, u_input.a))), ~(~vec3<u32>(1u, var_2.a, 49320u))) ^ countOneBits(_wgslsmith_sub_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, arg_0.a, arg_0.a), vec3<u32>(47173u, u_input.a, u_input.a), vec3<u32>(u_input.a, var_2.a, arg_0.a)), ~vec3<u32>(0u, 4294967295u, u_input.a), true), vec3<u32>(1u, ~var_2.a, firstTrailingBit(18478u))));
    global2 = array<vec2<i32>, 28>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(abs(global3[_wgslsmith_index_u32(~u_input.a, 16u)])), 0u)));
    global3 = array<vec4<f32>, 16>();
    var var_1 = func_4(func_1(func_4(func_1(Struct_1(0u, vec4<f32>(var_0.b.x, global1.x, global1.x, global1.x), var_0.a)))));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(~(vec2<u32>(8650u, 0u) >> (global0[_wgslsmith_index_u32(var_0.c, 32u)] % vec2<u32>(32u)))), ~(~global0[_wgslsmith_index_u32(var_0.c, 32u)] << (vec2<u32>(12032u, u_input.a) % vec2<u32>(32u)))), vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 15235u, u_input.a, var_1.c), vec4<u32>(var_1.c, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(57351u, var_0.c, var_1.c, var_1.a)), vec4<u32>(0u, 77534u, var_0.a, 19488u))), max(func_2(), var_0.c)));
    global3 = array<vec4<f32>, 16>();
    var var_3 = Struct_1(_wgslsmith_add_u32(~_wgslsmith_div_u32(1u, var_0.a), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0.b.x, -860f, _wgslsmith_f_op_f32(round(-1000f)))), u_input.a);
    let var_4 = _wgslsmith_div_i32(u_input.b.x, min(u_input.b.x, u_input.b.x)) & _wgslsmith_add_i32(abs(-u_input.b.x), -2147483647i);
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(-493f, ~abs(~1u), _wgslsmith_div_f32(var_3.b.x, var_0.b.x), u_input.b, _wgslsmith_div_vec3_i32(reverseBits(u_input.b.yyz), abs(u_input.b.wzx)) << ((vec3<u32>(var_1.c, ~4294967295u, var_0.a) << (~firstLeadingBit(vec3<u32>(19288u, var_3.c, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

