struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: f32 = -715f;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -1i, -3599i), vec3<i32>(19147i, 38160i, 2147483647i), vec3<i32>(-72547i, 2454i, 35321i), vec3<i32>(1i, 1i, 5784i), vec3<i32>(1i, 0i, i32(-2147483648)), vec3<i32>(1i, -47728i, -6258i), vec3<i32>(0i, -54394i, 0i), vec3<i32>(1i, 2760i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, -9624i), vec3<i32>(-25645i, 1i, -30054i), vec3<i32>(1i, -18434i, -19375i), vec3<i32>(8529i, -57180i, 0i), vec3<i32>(7314i, 34582i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -6060i), vec3<i32>(0i, 1i, 0i), vec3<i32>(3623i, 27475i, -25824i), vec3<i32>(-23148i, 1i, -96098i), vec3<i32>(-1i, -1i, 9388i), vec3<i32>(2147483647i, 1i, -56928i));

var<private> global3: array<vec3<f32>, 8>;

var<private> global4: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<u32> {
    return abs(~min(vec2<u32>(u_input.a, u_input.c) << (vec2<u32>(u_input.c, 78930u) % vec2<u32>(32u)), countOneBits(select(vec2<u32>(22158u, u_input.c), vec2<u32>(u_input.c, u_input.a), vec2<bool>(true, false)))));
}

fn func_2() -> i32 {
    global0 = array<vec2<bool>, 6>();
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(26488i << (u_input.c % 32u), max(40862i >> (u_input.a % 32u), _wgslsmith_div_i32(0i, -2147483647i))), vec2<i32>(_wgslsmith_mod_i32(-u_input.d.x, ~u_input.b.x), firstTrailingBit(-1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) - -2084f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1061f + 1246f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * -2164f)), _wgslsmith_f_op_f32(floor(-320f))) - vec4<f32>(807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1341f)) - -1594f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1262f, -2034f)), -951f)), select(vec2<u32>(u_input.a, firstLeadingBit(firstTrailingBit(u_input.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a) ^ vec2<u32>(31833u, u_input.c), vec2<u32>(0u, u_input.c)) << ((func_3() >> (~vec2<u32>(45636u, 16685u) % vec2<u32>(32u))) % vec2<u32>(32u)), select(select(global0[_wgslsmith_index_u32(~30502u, 6u)], global0[_wgslsmith_index_u32(~23988u, 6u)], true), vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(true, true))), -u_input.d.x, u_input.d.x);
    var var_1 = ~max(firstTrailingBit(reverseBits(vec3<u32>(0u, 65762u, 1u))), vec3<u32>(_wgslsmith_mod_u32(0u, u_input.a) >> (reverseBits(u_input.c) % 32u), 83229u, 55678u));
    var var_2 = vec4<u32>(62176u, 37110u, _wgslsmith_clamp_u32(~var_0.c.x, ~var_1.x, select(var_0.c.x, 59602u, any(vec3<bool>(true, true, true)))), var_0.c.x);
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(4294967295u, firstTrailingBit(countOneBits(32879u)))), 6u)];
    return var_0.d;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_2.c.x, 6u)];
    let var_1 = 9442u;
    var var_2 = Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(func_2(), -23790i, -u_input.d.x), u_input.b.x)), arg_2.b, arg_2.c, ~(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, arg_1), _wgslsmith_mod_i32(-33238i, -35029i))), 2147483647i);
    var var_3 = countOneBits(firstLeadingBit((0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 0u, 1u, 1u), arg_0) % 32u)) << (arg_3.x % 32u)));
    let var_4 = var_0.x;
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(~arg_1), u_input.d.x), _wgslsmith_sub_i32(19146i, 1i)), _wgslsmith_f_op_vec4_f32(-arg_2.b), vec2<u32>(var_1, _wgslsmith_sub_u32(var_1, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, 19943u), arg_0.wx << (var_2.c % vec2<u32>(32u))))), arg_2.e, 30023i);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    global3 = array<vec3<f32>, 8>();
    let var_0 = vec4<i32>(~_wgslsmith_div_i32(-min(-20540i, -1i), -436i), select(i32(-1i) * -12625i, 35612i, true), _wgslsmith_sub_i32(min(_wgslsmith_div_i32(-1i, func_2()), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -1i), vec2<i32>(1i, 1i))), select(_wgslsmith_add_i32(arg_2.d >> (52080u % 32u), _wgslsmith_div_i32(arg_2.e, u_input.d.x)), 15884i, !all(vec2<bool>(false, true)))), -1i);
    var var_1 = arg_2;
    global4 = 43427i;
    let var_2 = vec4<u32>(1u, 4294967295u, abs(arg_2.c.x), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, arg_0.x, 17527u), vec3<u32>(4294967295u, arg_2.c.x, 4294967295u))));
    return vec2<i32>(min(6836i, _wgslsmith_add_i32(max(abs(2147483647i), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.e) & var_0.xy, abs(var_1.a)))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(-1079f, 1632f));
    var var_1 = Struct_1(~vec2<i32>(43788i, ~(-15411i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(0u, u_input.a)) % 32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 329f))))))), vec2<u32>(~_wgslsmith_add_u32(~u_input.c, u_input.c << (u_input.c % 32u)), abs(10131u)), -10669i, u_input.b.x);
    global2 = array<vec3<i32>, 20>();
    let var_2 = 1193f;
    var var_3 = Struct_1(func_4(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, 83394u), vec4<u32>(29738u, var_1.c.x, var_1.c.x, var_1.c.x)) >> (~vec4<u32>(u_input.a, 0u, var_1.c.x, 55979u) % vec4<u32>(32u))), func_1(vec4<u32>(var_1.c.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(u_input.c, 7432u, 0u)), u_input.a), var_1.a.x, Struct_1(_wgslsmith_div_vec2_i32(var_1.a, var_1.a), var_1.b, vec2<u32>(var_1.c.x, var_1.c.x), var_1.a.x, u_input.d.x), ~var_1.c), Struct_1(u_input.b.zx, func_1(vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 21883u), u_input.b.x, Struct_1(var_1.a, vec4<f32>(var_2, var_1.b.x, -1340f, var_2), vec2<u32>(var_1.c.x, var_1.c.x), -29480i, var_1.a.x), reverseBits(var_1.c)).b, var_1.c, ~(-u_input.b.x), ~min(var_1.a.x, u_input.d.x)), -1201f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_0, -244f)) + var_1.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, 428f, var_1.b.x, -380f)), vec4<f32>(-306f, -1011f, var_1.b.x, -1246f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b), _wgslsmith_f_op_vec4_f32(trunc(var_1.b)))))), var_1.c, reverseBits((_wgslsmith_add_i32(-1i, u_input.d.x) & ~(-2147483647i)) << (0u % 32u)), abs(-var_1.d));
    var var_4 = Struct_1(var_1.a, var_1.b, func_1(countOneBits(firstTrailingBit(vec4<u32>(var_1.c.x, var_1.c.x, 13524u, u_input.a))), (4005i ^ var_3.a.x) | max(var_3.e, u_input.b.x), func_1(min(vec4<u32>(var_1.c.x, 1u, var_1.c.x, var_1.c.x), vec4<u32>(var_3.c.x, var_1.c.x, u_input.c, u_input.c)), _wgslsmith_add_i32(var_3.d, u_input.d.x), Struct_1(var_3.a, vec4<f32>(-142f, var_0, var_1.b.x, 411f), var_3.c, 0i, var_1.a.x), var_1.c), vec2<u32>(5858u, ~var_1.c.x)).c << ((var_1.c << (firstLeadingBit(func_3()) % vec2<u32>(32u))) % vec2<u32>(32u)), var_3.e, countOneBits(-65141i));
    global4 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.d & u_input.d, u_input.d) & var_3.a.x, (i32(-1i) * -6427i) >> (~var_1.c.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.c.x, ~4294967295u, var_1.b.x);
}

