struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32>;

var<private> global1: f32 = 1768f;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(1238f, vec3<i32>(-14136i, -5134i, -45250i), i32(-2147483648), vec3<u32>(16439u, 4294967295u, 1u), vec4<bool>(false, true, false, false)), Struct_1(-464f, vec3<i32>(2147483647i, 44530i, 2147483647i), 2147483647i, vec3<u32>(13944u, 1u, 107134u), vec4<bool>(true, false, false, false)), Struct_1(959f, vec3<i32>(1i, -29421i, 23521i), -15959i, vec3<u32>(4294967295u, 49664u, 24346u), vec4<bool>(false, false, false, false)), Struct_1(417f, vec3<i32>(-3484i, -16042i, 23800i), -44054i, vec3<u32>(12805u, 104246u, 11384u), vec4<bool>(true, true, false, false)), Struct_1(1958f, vec3<i32>(1i, 2147483647i, 49205i), -14274i, vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(-566f, vec3<i32>(0i, 56735i, -1i), -73641i, vec3<u32>(4294967295u, 8441u, 22472u), vec4<bool>(false, true, false, true)), Struct_1(-660f, vec3<i32>(59534i, 41882i, 34220i), 2147483647i, vec3<u32>(46784u, 1u, 50273u), vec4<bool>(true, false, true, false)), Struct_1(-446f, vec3<i32>(0i, -72321i, 2147483647i), 15417i, vec3<u32>(4294967295u, 4294967295u, 0u), vec4<bool>(true, false, true, false)), Struct_1(386f, vec3<i32>(78392i, 0i, 41368i), -16236i, vec3<u32>(67228u, 0u, 14424u), vec4<bool>(false, false, true, false)), Struct_1(272f, vec3<i32>(-9565i, 41234i, -62514i), -1i, vec3<u32>(27526u, 1u, 1u), vec4<bool>(true, false, false, false)), Struct_1(792f, vec3<i32>(2147483647i, -1i, -110i), -241i, vec3<u32>(0u, 33475u, 1u), vec4<bool>(true, true, true, false)), Struct_1(-163f, vec3<i32>(0i, 20677i, -43789i), 1i, vec3<u32>(8949u, 4294967295u, 0u), vec4<bool>(true, false, false, true)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(max(vec3<u32>(2562u, 0u, 0u), vec3<u32>(24762u, 99531u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(33745u, 15525u, 25546u))), ~firstLeadingBit(~vec3<u32>(19906u, 66826u, 4294967295u))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 56833u, 0u, 77807u), vec4<u32>(103813u, 21090u, 1u, 0u)), firstLeadingBit(abs(0u)))), 12u)];
    var var_1 = firstTrailingBit(var_0.d.yz);
    global0 = array<vec3<i32>, 32>();
    var_1 = _wgslsmith_sub_vec2_u32(var_0.d.zx, vec2<u32>(~17860u, ~abs(abs(36406u))));
    let var_2 = true;
    return firstTrailingBit(23228i);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(u_input.a.x, arg_1))), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2.b.x, 0i, -2147483647i), u_input.a) << (_wgslsmith_clamp_u32(arg_2.d.x, 45876u, arg_0.d.x) % 32u)) ^ arg_1, u_input.a.x));
    global1 = _wgslsmith_f_op_f32(-arg_2.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), vec3<i32>(_wgslsmith_div_i32(u_input.a.x, 2147483647i), -arg_1 | -2147483647i, ~arg_0.c) >> (~(_wgslsmith_sub_vec3_u32(vec3<u32>(58938u, arg_0.d.x, 59618u), arg_0.d) ^ min(vec3<u32>(1u, arg_0.d.x, arg_2.d.x), vec3<u32>(arg_0.d.x, arg_0.d.x, 46882u))) % vec3<u32>(32u)), -34937i, arg_0.d, select(vec4<bool>(all(select(arg_2.e.wz, vec2<bool>(true, arg_0.e.x), vec2<bool>(arg_0.e.x, arg_2.e.x))), true == (true && arg_0.e.x), arg_2.d.x < 16595u, ~var_0 <= func_3()), !select(!vec4<bool>(arg_0.e.x, false, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(arg_0.e.x, false, true))), all(!(!arg_0.e.zzy))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - 331f), _wgslsmith_f_op_f32(arg_0.a - arg_2.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) * _wgslsmith_f_op_f32(floor(197f))))), arg_0.a);
    let var_3 = countOneBits(_wgslsmith_add_vec4_u32(select(~firstTrailingBit(vec4<u32>(arg_0.d.x, 95344u, 53217u, 11994u)), ~vec4<u32>(var_1.d.x, 4294967295u, arg_0.d.x, arg_2.d.x), arg_2.e), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.d.x, 4294967295u, var_1.d.x, arg_2.d.x), vec4<u32>(26920u, 64417u, 37690u, 50108u)), ~vec4<u32>(arg_0.d.x, 34198u, arg_0.d.x, arg_0.d.x)))));
    return !vec3<bool>(var_1.e.x | all(!vec3<bool>(arg_2.e.x, var_1.e.x, arg_0.e.x)), ~1u <= ~_wgslsmith_clamp_u32(0u, var_3.x, arg_0.d.x), 16229u <= arg_2.d.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> f32 {
    var var_0 = arg_1.x & true;
    global2 = array<Struct_1, 12>();
    var_0 = any(vec2<bool>(select(!arg_2.x == all(vec4<bool>(false, arg_1.x, false, arg_1.x)), arg_1.x, true), select(arg_2.x, any(!vec4<bool>(arg_0.x, arg_1.x, arg_1.x, true)), any(func_2(Struct_1(892f, vec3<i32>(2147483647i, u_input.a.x, 30133i), 43227i, vec3<u32>(34963u, 4294967295u, 53752u), vec4<bool>(arg_1.x, arg_0.x, arg_1.x, arg_2.x)), u_input.a.x, Struct_1(-568f, vec3<i32>(-13383i, u_input.a.x, u_input.a.x), -2147483647i, vec3<u32>(0u, 0u, 1u), vec4<bool>(arg_2.x, arg_0.x, false, arg_0.x)))))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 12u)];
    let var_2 = Struct_1(var_1.a, vec3<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.ywz, vec3<i32>(var_1.b.x, 34446i, var_1.b.x)), -_wgslsmith_mult_i32(72812i, -1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, var_1.b.x, u_input.a.x, var_1.c), u_input.a)) ^ select(-vec3<i32>(17447i, var_1.c, var_1.c), firstLeadingBit(var_1.b), arg_0.x), 3977i, ~_wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(82047u, var_1.d.x, 0u)), var_1.d), select(select(vec4<bool>(select(arg_1.x, false, false), arg_0.x, false, true), select(select(var_1.e, var_1.e, var_1.e.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_1.x), select(vec4<bool>(true, arg_2.x, arg_1.x, var_1.e.x), var_1.e, arg_0.x)), var_1.e), vec4<bool>(arg_0.x, var_1.e.x, func_2(global2[_wgslsmith_index_u32(~7637u, 12u)], _wgslsmith_add_i32(var_1.c, 3719i), global2[_wgslsmith_index_u32(~1u, 12u)]).x, true), select(vec4<bool>(false, true, any(vec3<bool>(false, arg_1.x, true)), any(vec3<bool>(arg_0.x, false, arg_0.x))), vec4<bool>(!arg_1.x, true, var_1.e.x, !arg_0.x), false)));
    return _wgslsmith_f_op_f32(trunc(var_1.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_1(1000f, arg_2.zww, ~min(max(u_input.a.x, 2147483647i), 0i) ^ min(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, 2147483647i), arg_2.x), firstTrailingBit(-2147483647i)), firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(abs(27219u), ~1u), 1u, ~4294967295u)), select(arg_1, arg_1, !(!arg_1)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_0.xy, arg_0.xz, vec2<bool>(false, !((var_0.e.x != arg_1.x) || true))));
    let var_2 = true;
    global0 = array<vec3<i32>, 32>();
    let var_3 = arg_2.x;
    return vec4<bool>(!any(!vec2<bool>(var_0.e.x, var_0.e.x)), var_0.e.x, !(!arg_1.x && !(var_2 | true)), !var_2 == var_0.e.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_3.a, _wgslsmith_clamp_vec3_i32(arg_0.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(15935i, u_input.a.x, 2147483647i), -arg_0.b, ~reverseBits(global0[_wgslsmith_index_u32(37817u, 32u)])), ~u_input.a.yxz | ~vec3<i32>(arg_3.c, arg_3.c, u_input.a.x)), -_wgslsmith_sub_i32(~arg_3.c, _wgslsmith_clamp_i32(~arg_3.c, -u_input.a.x, -35063i)), _wgslsmith_clamp_vec3_u32(firstTrailingBit(countOneBits(countOneBits(arg_3.d))), arg_0.d, vec3<u32>(4294967295u, arg_0.d.x >> (arg_3.d.x % 32u), select(1u, arg_3.d.x, arg_3.e.x)) << (~firstLeadingBit(vec3<u32>(1730u, arg_0.d.x, arg_2)) % vec3<u32>(32u))), arg_3.e);
    global1 = -944f;
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2214f, -1030f, arg_3.a, 619f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(184f, 1192f, arg_0.a, 1269f), vec4<f32>(516f, 914f, arg_3.a, arg_3.a))), arg_3.e)))), var_0.e, vec4<i32>(_wgslsmith_mod_i32(~(-var_0.c), countOneBits(var_0.c)), i32(-1i) * -17052i, max(firstLeadingBit(1i), arg_3.b.x), arg_3.c));
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(738f, -1000f)));
    global0 = array<vec3<i32>, 32>();
    return Struct_1(arg_0.a, firstLeadingBit(vec3<i32>(min(~u_input.a.x, abs(-2147483647i)), -82646i, 0i)), ~1i, abs(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(max(arg_0.d, var_0.d), max(vec3<u32>(4294967295u, 69313u, 7871u), vec3<u32>(21033u, arg_2, 9919u))), select(~arg_3.d, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 42481u, arg_2), arg_0.d, arg_0.d), !vec3<bool>(arg_3.e.x, true, true)))), vec4<bool>(true, -392f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a - arg_0.a) - -1000f), arg_0.e.x, all(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -771f, var_0.a, arg_0.a)), arg_3.e, u_input.a).wwx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x, ~1i), u_input.a)), countOneBits(u_input.a));
    global0 = array<vec3<i32>, 32>();
    let var_1 = func_5(global2[_wgslsmith_index_u32(1u, 12u)], func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1122f, 389f, -704f, -1425f) - vec4<f32>(2475f, 667f, -1000f, 1295f))), vec4<f32>(_wgslsmith_f_op_f32(2245f + 398f), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -573f), -481f), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, any(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, true))))), vec4<bool>(true, true, true, true), ~_wgslsmith_mult_vec4_i32(u_input.a, -vec4<i32>(-2147483647i, var_0.x, 0i, var_0.x))), abs(~1u), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -322f))))), vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(13667i, 10412i), max(-2147483647i, u_input.a.x)), -_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 17620i, var_0.x, u_input.a.x), u_input.a), firstLeadingBit(u_input.a)), countOneBits(~max(vec3<u32>(0u, 25747u, 0u), vec3<u32>(30870u, 4294967295u, 0u))), vec4<bool>(false, func_2(Struct_1(1325f, global0[_wgslsmith_index_u32(1u, 32u)], u_input.a.x, vec3<u32>(1u, 0u, 38138u), vec4<bool>(true, false, true, true)), abs(u_input.a.x), Struct_1(-127f, vec3<i32>(34630i, 0i, 2147483647i), -23086i, vec3<u32>(0u, 77636u, 32198u), vec4<bool>(false, false, false, false))).x, all(vec4<bool>(true, true, true, true)), true)));
    var_0 = _wgslsmith_sub_vec4_i32(u_input.a, min(u_input.a, vec4<i32>(select(1i, var_0.x, !var_1.e.x), ~0i, _wgslsmith_sub_i32(u_input.a.x, -39858i << (var_1.d.x % 32u)), u_input.a.x)));
    var_0 = -select(select(u_input.a, min(vec4<i32>(u_input.a.x, -34295i, var_1.c, u_input.a.x), vec4<i32>(var_0.x, 2147483647i, -11479i, 49398i)), vec4<bool>(true, var_1.e.x, var_1.e.x, var_1.e.x)), vec4<i32>(i32(-1i) * -35888i, i32(-1i) * -5198i, 1i, -2147483647i), var_1.e) | ~(-vec4<i32>(var_1.b.x, u_input.a.x, 21752i, -2147483647i));
    global0 = array<vec3<i32>, 32>();
    let var_2 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(0u, var_1.d.x, var_1.d.x), var_1.d.x, _wgslsmith_mod_u32(var_1.d.x, var_1.d.x), min(1u, var_1.d.x)), ~(~(vec4<u32>(0u, 0u, 0u, 18938u) >> (vec4<u32>(0u, var_1.d.x, 20230u, 4294967295u) % vec4<u32>(32u)))));
    let var_3 = max(_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a.x, var_1.c), _wgslsmith_add_vec2_i32(-u_input.a.wx, _wgslsmith_mod_vec2_i32(var_1.b.xy, vec2<i32>(var_1.c, -51810i)))) & reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -31814i), vec2<i32>(var_0.x, -1i) | u_input.a.yw)), firstTrailingBit(~var_1.b.yx) << (var_1.d.zz % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(2010f, select(0i, var_1.b.x, var_1.e.x), var_2.zyy);
}

