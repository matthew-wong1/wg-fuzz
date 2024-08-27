struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(0i, -209i, vec3<i32>(-3030i, -22441i, 0i)), Struct_5(-19876i, 1i, vec3<i32>(0i, -28537i, -21958i)), Struct_5(57986i, 37211i, vec3<i32>(2147483647i, 7404i, -16387i)), Struct_5(1i, 2147483647i, vec3<i32>(0i, -13246i, -34645i)), Struct_5(-2984i, -1i, vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_5(-10384i, 0i, vec3<i32>(2147483647i, 1i, 0i)), Struct_5(9311i, 2147483647i, vec3<i32>(-7260i, 1i, -31014i)), Struct_5(2147483647i, -17696i, vec3<i32>(0i, -52257i, 0i)), Struct_5(-15550i, 9993i, vec3<i32>(-48637i, 5384i, 1i)), Struct_5(36335i, -1i, vec3<i32>(14382i, 26139i, 11245i)), Struct_5(1i, i32(-2147483648), vec3<i32>(27210i, 0i, 49443i)), Struct_5(2147483647i, 0i, vec3<i32>(54609i, 29793i, -1429i)), Struct_5(8103i, 2147483647i, vec3<i32>(-1i, i32(-2147483648), 1i)), Struct_5(1i, 0i, vec3<i32>(19301i, i32(-2147483648), 0i)), Struct_5(54864i, 20199i, vec3<i32>(31639i, 1i, 36746i)), Struct_5(33180i, -1i, vec3<i32>(53022i, 1i, i32(-2147483648))), Struct_5(16698i, 0i, vec3<i32>(-31428i, 19479i, 37044i)), Struct_5(2147483647i, -1i, vec3<i32>(-16813i, 1683i, -32480i)), Struct_5(1i, -29402i, vec3<i32>(-70664i, -23372i, 0i)), Struct_5(39043i, -13897i, vec3<i32>(2147483647i, 23023i, 1i)), Struct_5(11613i, 14168i, vec3<i32>(i32(-2147483648), -51183i, i32(-2147483648))), Struct_5(1i, -49052i, vec3<i32>(i32(-2147483648), -12121i, 2147483647i)), Struct_5(6255i, 52461i, vec3<i32>(2147483647i, 11827i, 42455i)), Struct_5(-28344i, 0i, vec3<i32>(0i, 15597i, 11661i)), Struct_5(-30604i, 2147483647i, vec3<i32>(12822i, -34882i, 14803i)), Struct_5(-18292i, -9549i, vec3<i32>(1i, -52868i, -10356i)), Struct_5(34975i, i32(-2147483648), vec3<i32>(2147483647i, 2147483647i, 2147483647i)), Struct_5(-1i, 1i, vec3<i32>(-1i, -13793i, -1i)), Struct_5(-3511i, -53436i, vec3<i32>(-40148i, -38111i, 1i)), Struct_5(i32(-2147483648), -5900i, vec3<i32>(12271i, -14530i, i32(-2147483648))));

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(vec2<i32>(26803i, -41484i), vec2<f32>(685f, 371f), vec3<f32>(1035f, 515f, -145f), 662f, vec4<f32>(835f, 347f, -1000f, -156f)), Struct_2(vec2<i32>(0i, 6757i), vec2<f32>(-305f, -641f), vec3<f32>(1385f, -1000f, -780f), -1688f, vec4<f32>(1238f, -699f, 340f, -1717f)), Struct_2(vec2<i32>(3308i, -85694i), vec2<f32>(-1983f, 1717f), vec3<f32>(891f, -411f, -1269f), 1688f, vec4<f32>(-1809f, -145f, -206f, -276f)));

var<private> global3: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> i32 {
    var var_0 = arg_2.b;
    global3 = true;
    let var_1 = min(firstLeadingBit(countOneBits(global0.ywz)), vec3<u32>(abs(_wgslsmith_sub_u32(19622u, u_input.a.x)), var_0.a.x, _wgslsmith_add_u32(~var_0.a.x, ~u_input.a.x)) | min(u_input.a.yyw, vec3<u32>(~global0.x, 17560u, 4294967295u)));
    var var_2 = arg_2;
    let var_3 = Struct_5(-var_2.c.a.x, -1i, vec3<i32>(0i, u_input.b.x, ~_wgslsmith_add_i32(-24084i ^ arg_1.a.x, 2147483647i)));
    return 12255i & (1i << ((u_input.a.x ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, arg_2.b.a.x), var_1), arg_2.b.a.x)) % 32u));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_3 {
    global3 = !any(vec2<bool>(select(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(false, false, false))), select(true, true, -14421i < u_input.b.x)));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, min(func_3(vec2<i32>(-26781i, u_input.b.x), Struct_2(arg_1.wz, vec2<f32>(-1650f, 406f), vec3<f32>(776f, -1396f, -2134f), 880f, vec4<f32>(291f, -655f, -1346f, 944f)), Struct_4(Struct_1(-199f), Struct_3(vec2<u32>(arg_0, 1u), 160f, vec3<f32>(314f, -232f, -1000f)), global2[_wgslsmith_index_u32(48627u, 3u)], arg_1, vec2<bool>(false, true)), false), 2147483647i)), vec2<i32>(18581i, func_3(_wgslsmith_div_vec2_i32(u_input.b, u_input.b), Struct_2(arg_1.zx, vec2<f32>(-346f, 546f), vec3<f32>(-176f, -950f, 521f), 562f, vec4<f32>(-1000f, 1890f, 1522f, 929f)), Struct_4(Struct_1(1455f), Struct_3(vec2<u32>(global0.x, u_input.a.x), 1000f, vec3<f32>(1109f, 1000f, -147f)), Struct_2(vec2<i32>(u_input.b.x, -1i), vec2<f32>(877f, -1609f), vec3<f32>(-1037f, -1000f, -806f), -941f, vec4<f32>(902f, 397f, 1910f, -922f)), arg_1, vec2<bool>(false, false)), true))), i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.x, 1i), u_input.b.x));
    var_0 = u_input.b.x;
    var_0 = -firstTrailingBit(-2688i);
    let var_1 = vec2<i32>(func_3(-arg_1.wx, Struct_2(u_input.b, vec2<f32>(-1120f, 1f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(806f, 874f, -181f))), _wgslsmith_f_op_f32(2071f - _wgslsmith_div_f32(202f, 915f)), vec4<f32>(_wgslsmith_f_op_f32(max(588f, -1383f)), _wgslsmith_f_op_f32(401f * 995f), _wgslsmith_f_op_f32(max(-823f, 1346f)), _wgslsmith_f_op_f32(-437f + 630f))), Struct_4(Struct_1(-1214f), Struct_3(vec2<u32>(0u, 84934u) << (global0.ww % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1215f), vec3<f32>(612f, -513f, -190f)), global2[_wgslsmith_index_u32(~9663u, 3u)], ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, 2147483647i, arg_1.x, u_input.b.x), vec4<i32>(1i, 50174i, arg_1.x, arg_1.x)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), ((0u & u_input.a.x) >> (arg_0 % 32u)) >= (0u | u_input.a.x)), -u_input.b.x);
    return Struct_3(global0.ww, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1192f, -1983f)) + -2091f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -352f), -215f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-481f, 109f, -1940f), vec3<f32>(-1000f, -680f, 732f))) * vec3<f32>(1f, 1f, 1f)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = countOneBits(vec4<i32>(~(~(-u_input.b.x)), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), u_input.b.x, _wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(arg_1, 2147483647i)), -44224i)));
    global1 = array<Struct_5, 30>();
    global1 = array<Struct_5, 30>();
    let var_1 = !(!(!arg_2));
    let var_2 = vec4<i32>(-(~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-48911i, u_input.b.x, -23581i, -15458i), vec4<i32>(var_0.x, u_input.b.x, 9204i, -38688i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_0.x, var_0.x, var_0.x), vec4<i32>(1i, u_input.b.x, var_0.x, arg_1)))), u_input.b.x, _wgslsmith_clamp_i32(var_0.x ^ select(-u_input.b.x, var_0.x, var_1), func_3(vec2<i32>(var_0.x, var_0.x), global2[_wgslsmith_index_u32(arg_0.a.x, 3u)], Struct_4(Struct_1(arg_0.c.x), Struct_3(vec2<u32>(arg_3.a.x, global0.x), arg_3.c.x, vec3<f32>(arg_3.c.x, 397f, arg_3.c.x)), Struct_2(vec2<i32>(arg_1, var_0.x), vec2<f32>(972f, arg_0.b), vec3<f32>(arg_3.b, -1337f, arg_3.b), arg_0.b, vec4<f32>(arg_3.b, arg_3.c.x, arg_0.c.x, 353f)), vec4<i32>(var_0.x, var_0.x, -1391i, arg_1), vec2<bool>(false, arg_2)), true) << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, arg_3.a.x, 4294967295u), global0.yyz), global0.wzx) % 32u), abs((u_input.b.x | arg_1) & (var_0.x >> (u_input.a.x % 32u)))), firstTrailingBit(-min(_wgslsmith_mult_i32(-1i, arg_1), min(-34613i, arg_1))));
    return arg_3.b;
}

fn func_1(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(539f, 110f, -719f, 1311f) - vec4<f32>(-1299f, 872f, -1383f, -1022f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, -535f, -1000f, -197f)))))));
    global0 = ~u_input.a;
    var var_1 = Struct_3(reverseBits(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), global0.zw), u_input.a.xx << (global0.zw % vec2<u32>(32u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), -1419f)), var_0.xxx);
    let var_2 = Struct_5(u_input.b.x, -2147483647i, ~arg_0.yxz);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(u_input.a.ww, var_1.b, var_1.c), _wgslsmith_mult_i32(i32(-1i) * -var_2.c.x, -32310i), _wgslsmith_f_op_f32(var_0.x + var_0.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -1000f)), func_2(~u_input.a.x, ~(~vec4<i32>(var_2.c.x, u_input.b.x, arg_0.x, 41378i))))), var_0.x);
    return select(!select(vec3<bool>(all(vec2<bool>(true, true)), select(false, false, false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) & true, true, true | !all(vec4<bool>(false, true, false, false))), vec3<bool>(all(vec2<bool>(true, true)), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~select(u_input.a.wzx, countOneBits(global0.xxx), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    let var_2 = -abs(~(var_1.c << (var_0 % vec3<u32>(32u))));
    global1 = array<Struct_5, 30>();
    var var_3 = !select(func_1(vec4<i32>(u_input.b.x, var_1.c.x, -27351i, u_input.b.x) << (countOneBits(u_input.a) % vec4<u32>(32u))), vec3<bool>(u_input.b.x == select(var_2.x, u_input.b.x, false), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), vec3<bool>(!(4294967295u == global0.x), any(vec4<bool>(false, false, true, false)) && true, true));
    var_3 = vec3<bool>(var_1.c.x < 0i, !(all(!vec4<bool>(true, false, true, var_3.x)) || var_3.x), true);
    global1 = array<Struct_5, 30>();
    var var_4 = ~(~41750u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(-517f, _wgslsmith_div_f32(-268f, -191f))), _wgslsmith_f_op_f32(-1576f * _wgslsmith_f_op_f32(round(-323f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1868f, 570f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(889f, 429f), vec2<f32>(553f, 533f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-657f, -2647f, _wgslsmith_f_op_f32(step(302f, -1276f)), _wgslsmith_f_op_f32(trunc(884f))) * vec4<f32>(1000f, _wgslsmith_div_f32(-531f, 849f), _wgslsmith_f_op_f32(319f - -1114f), 865f))));
}

