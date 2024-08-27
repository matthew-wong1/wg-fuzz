struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32 = -2561f;

var<private> global2: array<vec3<bool>, 27>;

var<private> global3: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), 24531i), vec2<i32>(1i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -23114i), vec2<i32>(-7485i, -10651i), vec2<i32>(1i, -1i), vec2<i32>(-17878i, 2147483647i), vec2<i32>(7483i, 1i), vec2<i32>(44496i, i32(-2147483648)), vec2<i32>(10422i, -62898i), vec2<i32>(17512i, 0i), vec2<i32>(-39132i, -4716i), vec2<i32>(-15793i, 0i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-37073i, 8780i), vec2<i32>(39103i, 0i), vec2<i32>(i32(-2147483648), 8636i), vec2<i32>(-44851i, -4364i), vec2<i32>(47783i, -1i), vec2<i32>(2147483647i, 21504i), vec2<i32>(-17615i, 2147483647i), vec2<i32>(0i, -6340i), vec2<i32>(33970i, i32(-2147483648)), vec2<i32>(-54704i, -20766i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(41251i, 2147483647i));

var<private> global4: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(!any(vec3<bool>(any(global2[_wgslsmith_index_u32(u_input.a, 27u)]), true, any(vec3<bool>(false, false, true)))), _wgslsmith_sub_vec2_u32(global0.xx, ~vec2<u32>(33480u, countOneBits(u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f))))));
    var var_2 = Struct_1(var_0.a, vec2<u32>(12407u, abs(1u)));
    var var_3 = vec4<i32>(25465i, ~(-3823i), 2147483647i, _wgslsmith_sub_i32(abs(0i), countOneBits(i32(-1i) * -2147483647i) << (_wgslsmith_add_u32(min(44647u, global0.x), _wgslsmith_sub_u32(4294967295u, 55438u)) % 32u)));
    var var_4 = ~_wgslsmith_sub_i32(var_3.x, -1i);
    return 7059u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    global0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(10157u, 101734u, 1u, 24644u), ~vec4<u32>(4294967295u, 86743u, 38123u, arg_0.b.x)), 0u, 13615u), vec4<u32>(~6858u, u_input.a, _wgslsmith_mod_u32(1u, ~abs(22466u)), ~global0.x));
    var var_0 = ~(~2147483647i << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(1u, 4294967295u)), ~global0.xy), vec2<u32>(~1u, 0u)) % 32u));
    let var_1 = arg_0;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(round(-2363f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(531f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(262f * 895f)), -216f);
    var var_3 = func_3();
    return Struct_1(all(!vec2<bool>(false, arg_0.a)), vec2<u32>(4294967295u, select(_wgslsmith_div_u32(arg_0.b.x, arg_0.b.x & u_input.a), u_input.a, (400f <= var_2.x) & true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> i32 {
    let var_0 = select(vec3<i32>(~reverseBits(-126i | arg_2), _wgslsmith_div_i32(~(~arg_2), arg_2), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2, arg_2, arg_2) >> (vec4<u32>(36904u, 4294967295u, 14331u, arg_1.b.x) % vec4<u32>(32u)), ~vec4<i32>(arg_2, arg_2, arg_2, 31810i))), firstLeadingBit(~(vec3<i32>(arg_2, arg_2, 14068i) >> ((global0.zzw << (vec3<u32>(1u, arg_3, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))), false | arg_0.a);
    let var_1 = arg_1;
    let var_2 = var_1;
    global0 = vec4<u32>(global0.x, var_2.b.x, select(4294967295u & global0.x, ~4294967295u, !func_2(Struct_1(false, var_2.b), global0.zxx & global0.xyx).a), ~arg_1.b.x);
    var var_3 = _wgslsmith_mod_i32(var_0.x >> (0u % 32u), 1i);
    return ~(-15156i);
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-809f, 360f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2192f, -653f) * _wgslsmith_f_op_f32(-983f - 847f))))), _wgslsmith_f_op_f32(step(729f, 745f))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1106f)) + _wgslsmith_f_op_f32(442f + 576f)) * _wgslsmith_f_op_f32(f32(-1f) * -711f)), ~(~abs(vec2<u32>(global0.x, 1u))));
    global0 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 28364u), vec2<u32>(u_input.a, 10652u)), ~global0.x, func_2(Struct_1(true, vec2<u32>(var_0.b.x, 4294967295u)), vec3<u32>(48134u, 1u, u_input.a)).b.x), var_0.b.x), ~0u, 1u, ~min(0u, 4294967295u));
    let var_1 = 0i;
    let var_2 = -(~(~_wgslsmith_clamp_vec2_i32(global3[_wgslsmith_index_u32(var_0.b.x, 28u)], arg_0.zx, vec2<i32>(-1i, 1i))) ^ abs(vec2<i32>(var_1, var_1) | ~vec2<i32>(arg_0.x, arg_0.x)));
    return func_2(var_0, global0.wyw);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = Struct_1(false, countOneBits(vec2<u32>(_wgslsmith_mod_u32(31947u << (u_input.a % 32u), max(arg_0.b.x, arg_0.b.x)), select(u_input.a, ~arg_1.x, true))));
    var var_2 = func_5(vec3<i32>(2147483647i, -func_4(func_2(arg_0, global0.yzw), arg_0, -10403i, _wgslsmith_clamp_u32(var_0.b.x, 1u, 0u)), -2147483647i));
    var var_3 = vec4<u32>(84962u, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(1u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, arg_0.b.x, 3885u), arg_1)), 3560u | var_2.b.x)), ~var_0.b.x >> (0u % 32u), 0u);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, 1022f, 1232f, -702f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-729f, 705f, -1523f, 1067f) * vec4<f32>(738f, -700f, -1283f, 1023f))))))));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = func_2(Struct_1(any(vec4<bool>(true, true, true, true)), vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(41911u, 23626u)), _wgslsmith_mult_u32(u_input.a ^ arg_0, _wgslsmith_mult_u32(7873u, 0u)))), global0.xyz);
    let var_1 = _wgslsmith_f_op_f32(-647f + -1898f);
    let var_2 = func_5(_wgslsmith_clamp_vec3_i32(select(-vec3<i32>(2147483647i, -2147483647i, arg_3.x), -vec3<i32>(15124i, 2147483647i, arg_3.x), select(global2[_wgslsmith_index_u32(46540u, 27u)], global2[_wgslsmith_index_u32(global0.x, 27u)], true)) & _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-33098i, 0i, arg_3.x), vec3<i32>(1i, arg_3.x, arg_3.x)), vec3<i32>(arg_3.x, 1i, -1i) << (global0.wwx % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_3.x, arg_3.x), vec3<i32>(2147483647i, 0i, -7313i)) << (countOneBits(global0.xwx) % vec3<u32>(32u)), ~vec3<i32>(-24702i, 0i, arg_3.x) ^ ((vec3<i32>(17734i, arg_3.x, arg_3.x) >> (vec3<u32>(82672u, var_0.b.x, var_0.b.x) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-45662i, -2147483647i, -47368i), vec3<i32>(48957i, 0i, arg_3.x), vec3<i32>(arg_3.x, arg_3.x, -2316i)))));
    global3 = array<vec2<i32>, 28>();
    var var_3 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(abs(abs(arg_3.x << (var_2.b.x % 32u))), arg_3.x));
    return var_2;
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    global4 = arg_2.x;
    var var_0 = true;
    global3 = array<vec2<i32>, 28>();
    let var_1 = func_5(vec3<i32>(12675i, arg_0, -1i));
    var var_2 = max(vec3<i32>(~arg_0 << (u_input.a % 32u), arg_0, -17376i), vec3<i32>(arg_0, _wgslsmith_sub_i32(-arg_0, arg_0), (i32(-1i) * -1i) ^ arg_0) ^ firstLeadingBit(reverseBits(~vec3<i32>(1i, 2147483647i, arg_0))));
    return var_1;
}

fn func_8(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_7(-_wgslsmith_sub_i32(-2147483647i, -44804i), func_5(_wgslsmith_add_vec3_i32(max(~vec3<i32>(-1i, 0i, 2147483647i), ~vec3<i32>(-1i, -2147483647i, 35021i)), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1175f, 1000f) + arg_0.yz))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(arg_0.xw)), _wgslsmith_f_op_vec2_f32(-arg_0.xy)))))), func_5(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, ~97722i, 21415i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -8705i, -14193i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 26723i, 1i), vec3<i32>(1490i, 57031i, 1i))))));
    var var_1 = _wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(var_0.b.x << (0u % 32u)), _wgslsmith_add_u32(4294967295u, global0.x ^ global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(16908u, arg_2.b.x, 1u) | global0.xyx, vec3<u32>(u_input.a, var_0.b.x, arg_2.b.x) >> (vec3<u32>(arg_2.b.x, arg_2.b.x, var_0.b.x) % vec3<u32>(32u))), firstTrailingBit(reverseBits(15969u))), vec4<u32>(arg_2.b.x, u_input.a, 0u, select(~10350u, 1u, false))), 28u)], _wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(24255u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]));
    global3 = array<vec2<i32>, 28>();
    var var_2 = arg_2;
    var var_3 = ~(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(9456u, var_2.b.x, 0u, u_input.a), firstLeadingBit(vec4<u32>(global0.x, var_0.b.x, arg_2.b.x, u_input.a))), vec4<u32>(10833u >> (arg_2.b.x % 32u), global0.x, ~global0.x, 121909u)) >> (vec4<u32>(~countOneBits(u_input.a), global0.x, global0.x, 4294967295u) % vec4<u32>(32u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1303f), -1106f) + _wgslsmith_f_op_f32(round(-1291f))), _wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(224f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(680f * 316f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1350f - _wgslsmith_f_op_f32(f32(-1f) * -1410f)))), false)), 1112f);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -235f, 568f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(-1058f, -1000f, 598f, -1309f)), any(vec2<bool>(true, true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-698f, var_0.x, 1111f, var_0.x) * vec4<f32>(-1555f, var_0.x, -1431f, var_0.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-789f, 1672f, 178f, var_0.x)))))), !(!any(vec4<bool>(false, false, true, false))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1760f, -767f, -1400f) * vec4<f32>(824f, -2011f, var_0.x, 537f)))))));
    var var_1 = func_8(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1072f * var_0.x) * -1652f))), var_0.x, func_7(_wgslsmith_mod_i32(1i, 1i), Struct_1(true, vec2<u32>(~40827u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, 1u), vec4<u32>(13623u, global0.x, 0u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yw) + vec2<f32>(1f, 1f)), func_6(34723u, var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(false, global0.wy), vec3<u32>(4294967295u, 71821u, u_input.a)))), vec2<i32>(_wgslsmith_div_i32(0i, -11751i), -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -453f)), var_0.x), _wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(global0.xyw, global0.xyy), vec3<u32>(_wgslsmith_mod_u32(u_input.a, 119100u), global0.x, 1u)) >> (global0.zyx % vec3<u32>(32u)), 4294967295u, _wgslsmith_f_op_f32(-var_0.x), var_1.b.x);
}

