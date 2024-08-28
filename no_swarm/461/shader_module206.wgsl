struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, -53336i), Struct_1(true, 2147483647i), Struct_1(false, 57385i), Struct_1(true, 2726i), Struct_1(false, -48132i), Struct_1(true, -13035i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 31>();
    var var_0 = -217f;
    var_0 = 1000f;
    let var_1 = any(select(vec3<bool>(any(vec3<bool>(arg_1.a, arg_1.a, true)) || true, arg_1.a, true), !select(vec3<bool>(false, true, true), !vec3<bool>(arg_1.a, arg_1.a, true), false), select(vec3<bool>(true, !arg_1.a, all(vec3<bool>(arg_1.a, true, arg_1.a))), select(select(vec3<bool>(false, false, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a), arg_1.a), vec3<bool>(false, false, arg_1.a), !vec3<bool>(arg_1.a, true, arg_1.a)), _wgslsmith_add_u32(45117u, u_input.a) > firstTrailingBit(0u))));
    return ~(~vec4<u32>(u_input.a, u_input.c, abs(u_input.c >> (10419u % 32u)), u_input.c));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> i32 {
    var var_0 = !arg_1.x;
    var var_1 = Struct_1(false, _wgslsmith_mod_i32(~5811i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(2147483647i, 39460i, 2147483647i, -6966i)), -vec4<i32>(23378i, -1i, 1i, 4411i)) & _wgslsmith_mult_i32(1i >> (u_input.a % 32u), ~1i)));
    let var_2 = Struct_2(vec4<u32>(max(~4294967295u, u_input.b.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 28511u, arg_0, 4294967295u)) | (vec4<u32>(arg_0, arg_0, u_input.b.x, 18797u) & vec4<u32>(arg_0, arg_0, u_input.c, arg_0)), func_3(37826i, global2[_wgslsmith_index_u32(34647u, 6u)])), countOneBits(u_input.c), func_3(~_wgslsmith_mod_i32(0i, -2147483647i), Struct_1(false, -25667i)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1884f)) - _wgslsmith_f_op_f32(111f + -636f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(937f + 751f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-946f)))));
    var var_3 = all(!vec4<bool>(var_2.b < _wgslsmith_f_op_f32(min(var_2.b, -339f)), arg_1.x, var_1.b <= select(var_1.b, var_1.b, false), true));
    global0 = array<Struct_1, 31>();
    return 1i;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_3.b))))), vec2<f32>(arg_3.b, 248f)));
    global2 = array<Struct_1, 6>();
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    global1 = arg_1;
    return global0[_wgslsmith_index_u32(u_input.a, 31u)];
}

fn func_1() -> bool {
    global0 = array<Struct_1, 31>();
    var var_0 = func_4(vec3<i32>(firstLeadingBit(func_2(75354u, vec2<bool>(true, true), vec2<bool>(true, true))), -24594i, abs(_wgslsmith_div_i32(12661i, select(17579i, 2147483647i, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -770f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-538f + 373f))), 0u, Struct_2(~vec4<u32>(u_input.b.x, 7381u, firstLeadingBit(u_input.c), u_input.c), _wgslsmith_f_op_f32(653f * _wgslsmith_f_op_f32(round(-1060f)))));
    let var_1 = Struct_2(vec4<u32>(21244u, u_input.c, _wgslsmith_clamp_u32(46179u, firstLeadingBit(4294967295u), select(u_input.b.x, u_input.b.x, var_0.a)) ^ ~(~4294967295u), 7470u), 1f);
    let var_2 = var_1;
    var_0 = func_4(vec3<i32>(-_wgslsmith_mult_i32(~(-2147483647i), var_0.b), _wgslsmith_clamp_i32(0i, 25934i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(9471i, 0i, 0i), vec3<i32>(-1i, -1i, var_0.b))), -abs(_wgslsmith_clamp_i32(-16535i, 0i, 2147483647i))), false, ~countOneBits(func_3(1i, func_4(vec3<i32>(var_0.b, 1i, 1i), true, 10186u, Struct_2(vec4<u32>(var_2.a.x, 1u, var_2.a.x, 1u), 1000f))).x), Struct_2((_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 91948u, var_1.a.x), var_2.a, var_2.a) | max(var_2.a, var_1.a)) >> (select(vec4<u32>(var_2.a.x, 0u, u_input.b.x, 0u), ~vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, 71498u), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, true))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1362f * _wgslsmith_f_op_f32(min(var_2.b, var_1.b)))));
    return false;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = func_4(max(vec3<i32>(abs(select(arg_0.b, 0i, false)), 1i, min(0i, arg_0.b)), vec3<i32>(35354i, _wgslsmith_dot_vec3_i32(~vec3<i32>(15492i, 36968i, 0i), vec3<i32>(13468i, 0i, 18644i) | vec3<i32>(arg_0.b, -15364i, arg_0.b)), -50004i)), !(!(~u_input.b.x <= _wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x))), ~u_input.b.x, Struct_2(~vec4<u32>(u_input.a, u_input.c, 0u << (u_input.b.x % 32u), u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(2185f, 852f, arg_0.a)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2452f + 356f), _wgslsmith_div_f32(2117f, 751f)))));
    global0 = array<Struct_1, 31>();
    var var_1 = ~u_input.b << (u_input.b % vec3<u32>(32u));
    let var_2 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(min(max(1u, 1u), countOneBits(u_input.b.x)), 1u), 4294967295u, abs(_wgslsmith_add_u32(~u_input.b.x, u_input.a >> (var_1.x % 32u))), var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -122f), 429f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, var_2.b), vec2<f32>(1262f, var_2.b))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.b, var_2.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b, var_2.b), vec2<f32>(-554f, 378f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1156f, var_2.b) + vec2<f32>(634f, var_2.b))))), vec2<bool>(!var_0.a, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1411f, var_2.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1022f, var_2.b)))));
    return var_2;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(arg_1.b - arg_1.b) <= arg_1.b;
    global2 = array<Struct_1, 6>();
    global1 = !func_1();
    global0 = array<Struct_1, 31>();
    let var_1 = ~_wgslsmith_mod_vec4_i32(-(abs(vec4<i32>(1i, 316i, 1i, arg_3)) & ~vec4<i32>(arg_3, 1i, arg_3, arg_3)), max(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(32843i, 25395i), vec2<i32>(-43520i, 44339i)), arg_3, min(arg_3, -8744i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-10120i, arg_3, arg_3, arg_3), ~vec4<i32>(14530i, 5835i, 0i, -2147483647i))));
    return arg_2.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b.x, 5217u, u_input.c, u_input.b.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 13161u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-834f - 974f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1026f))))), func_5(Struct_1(func_1(), ~2575i)), vec3<bool>(true, true, any(vec2<bool>(true, true))), reverseBits(1i));
    var var_1 = 1i;
    var_1 = ~_wgslsmith_clamp_i32(~(-1i), -firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(7694i, -1i));
    let var_2 = vec4<i32>(~(_wgslsmith_sub_i32(-6833i, 0i) & _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -5526i), vec3<i32>(-19784i, -5904i, -17208i))), _wgslsmith_mod_i32(1i, 2147483647i << (_wgslsmith_sub_u32(u_input.c, 4294967295u) % 32u)), -1i, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1664i), vec2<i32>(-25328i, -1i)), vec2<i32>(0i, -1i)), ~(i32(-1i) * -1i))) & -_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 63766i, 4936i, 0i), -vec4<i32>(1i, 1i, 1i, 1i));
    global2 = array<Struct_1, 6>();
    var var_3 = Struct_2(abs(reverseBits(~min(vec4<u32>(8216u, 9143u, u_input.b.x, u_input.a), vec4<u32>(u_input.c, 6888u, u_input.c, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(455f, -140f))) * 2301f) + _wgslsmith_f_op_f32(trunc(528f))));
    var var_4 = func_4(_wgslsmith_sub_vec3_i32(~(var_2.yzy & var_2.zzw), -var_2.zzx) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 56300u, 0u), u_input.b) % vec3<u32>(32u)), var_0.x | true, var_3.a.x | countOneBits(max(~0u, var_3.a.x)), Struct_2(var_3.a, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_3.b))));
    var var_5 = func_4(vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, var_2.x)), _wgslsmith_mult_vec2_i32(var_2.xx << (var_3.a.wy % vec2<u32>(32u)), reverseBits(var_2.yx))), var_4.b, -(~(0i << (var_3.a.x % 32u)))), var_4.a, func_5(global2[_wgslsmith_index_u32(0u, 6u)]).a.x, Struct_2(_wgslsmith_div_vec4_u32(select(~vec4<u32>(var_3.a.x, 1u, var_3.a.x, var_3.a.x), func_5(global0[_wgslsmith_index_u32(var_3.a.x, 31u)]).a, var_0.x), vec4<u32>(~0u, 42880u, 57469u, 40410u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, var_3.b) - func_5(Struct_1(var_0.x, 15297i)).b) + _wgslsmith_f_op_f32(var_3.b - var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xwz & vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_5.b, 1i), -1164i >> (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, 17171i, 21321i), vec3<i32>(-1i, -1i, -24704i)), var_2.ywz)), vec4<f32>(_wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(-var_3.b)), var_3.b, 1000f, _wgslsmith_f_op_f32(-var_3.b)), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(388f, 2178f, var_3.b, 328f) * vec4<f32>(var_3.b, -1934f, var_3.b, var_3.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, -374f, var_3.b, var_3.b) + vec4<f32>(var_3.b, var_3.b, -1386f, var_3.b))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, var_3.b, -112f, _wgslsmith_f_op_f32(1720f + -422f)))), max(_wgslsmith_mult_i32(min(abs(var_5.b), _wgslsmith_dot_vec3_i32(vec3<i32>(-59290i, var_2.x, 10627i), var_2.yxy)), _wgslsmith_dot_vec3_i32(vec3<i32>(-20921i, var_4.b, 0i), var_2.wyx) ^ (i32(-1i) * -66058i)), -1i));
}

