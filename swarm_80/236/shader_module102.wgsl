struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, true), vec4<u32>(15457u, 26787u, 0u, 1u), -507f), Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 16070u, 13725u, 9088u), -257f), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 57216u, 1u, 32258u), -407f), Struct_1(vec2<bool>(true, true), vec4<u32>(21135u, 39074u, 23562u, 52519u), 1000f), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 17389u, 47032u, 54947u), 341f), Struct_1(vec2<bool>(true, false), vec4<u32>(30042u, 0u, 1u, 32566u), 899f), Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 23830u, 1u, 1u), 1000f), Struct_1(vec2<bool>(true, false), vec4<u32>(43161u, 4294967295u, 39633u, 34192u), -285f), Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 1u, 24023u, 55532u), 1695f), Struct_1(vec2<bool>(false, false), vec4<u32>(65714u, 4294967295u, 36510u, 45800u), -2049f), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 11296u, 0u), 1000f), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 4636u, 0u), 490f), Struct_1(vec2<bool>(false, true), vec4<u32>(0u, 0u, 0u, 19948u), -562f), Struct_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 1u, 1u), -506f), Struct_1(vec2<bool>(true, true), vec4<u32>(10218u, 59079u, 94125u, 1u), -150f), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 61748u, 27507u, 62888u), -286f), Struct_1(vec2<bool>(true, true), vec4<u32>(1303u, 1u, 20908u, 29450u), -1000f), Struct_1(vec2<bool>(false, false), vec4<u32>(11060u, 32904u, 34159u, 1u), 412f), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 1u, 21618u, 32831u), -1058f), Struct_1(vec2<bool>(false, false), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 471f), Struct_1(vec2<bool>(false, false), vec4<u32>(39587u, 1u, 46227u, 0u), 1908f), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 4294967295u, 3613u, 34314u), 156f));

var<private> global1: array<Struct_2, 28>;

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-506f, 1069f, -223f), Struct_1(vec2<bool>(false, true), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), -822f), -45586i);

var<private> global3: array<f32, 13> = array<f32, 13>(1782f, -1562f, 690f, -916f, 1000f, -398f, -585f, 1221f, 533f, -814f, -117f, -308f, -742f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    global3 = array<f32, 13>();
    var var_0 = _wgslsmith_mult_vec4_i32(-max(vec4<i32>(83443i, 0i, 2864i, -57600i) >> (vec4<u32>(0u, 0u, u_input.a, 1u) % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, -1i, global2.c, -38327i)) | (-min(vec4<i32>(global2.c, -1i, 2409i, arg_2), vec4<i32>(arg_2, arg_2, -1i, 21258i)) ^ -vec4<i32>(-2147483647i, 3495i, 49755i, 9433i)), -(-firstTrailingBit(vec4<i32>(arg_2, 2147483647i, 2147483647i, global2.c)) << (vec4<u32>(global2.b.b.x, 1u, _wgslsmith_add_u32(global2.b.b.x, u_input.b), _wgslsmith_clamp_u32(16556u, global2.b.b.x, 0u)) % vec4<u32>(32u))));
    var var_1 = ~firstTrailingBit((vec4<u32>(u_input.d.x, global2.b.b.x, u_input.b, global2.b.b.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 35129u, global2.b.b.x, arg_0.x), vec4<u32>(4294967295u, 21569u, global2.b.b.x, 4294967295u)) % vec4<u32>(32u))) & global2.b.b);
    var_1 = ~min(global2.b.b, global2.b.b);
    var var_2 = all(global2.b.a);
    return Struct_1(!(!global2.b.a), vec4<u32>(u_input.d.x, 14050u, 1u, ~_wgslsmith_sub_u32(countOneBits(arg_0.x), _wgslsmith_sub_u32(4294967295u, var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1244f));
}

fn func_3() -> vec3<i32> {
    global3 = array<f32, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a), global2.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.a))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2.a, global2.a)), _wgslsmith_f_op_vec3_f32(-global2.a)))), Struct_1(!select(global2.b.a, vec2<bool>(global2.b.a.x, global2.b.a.x), !vec2<bool>(global2.b.a.x, global2.b.a.x)), ~abs(global2.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(821f * global3[_wgslsmith_index_u32(global2.b.b.x, 13u)]))))), -2147483647i);
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(var_0.b.b.x, 13u)], _wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(975f + global2.b.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a, var_0.a) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-957f, var_0.a.x, 864f)))), _wgslsmith_mult_i32(global2.c, -38302i) != 40124i)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(395f, global3[_wgslsmith_index_u32(4294967295u, 13u)], var_0.b.c)))))), func_1(_wgslsmith_mod_vec2_u32(~u_input.d.xz >> (abs(vec2<u32>(var_0.b.b.x, 9021u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(global2.b.b.x, 0u), global2.b.b.x & 48719u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.yz - vec2<f32>(global3[_wgslsmith_index_u32(global2.b.b.x, 13u)], 1118f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(903f, -279f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global2.b.b.x, 13u)], -775f) + vec2<f32>(150f, var_0.b.c)) - _wgslsmith_div_vec2_f32(vec2<f32>(2138f, -605f), vec2<f32>(-302f, global3[_wgslsmith_index_u32(0u, 13u)])))), ~u_input.c.x), firstLeadingBit(i32(-1i) * -_wgslsmith_mod_i32(11907i, -2147483647i)));
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1253f), -1681f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0.b.b.x, 13u)] * global2.b.c))), -393f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.yy, select(vec2<u32>(~73447u, 1u), ~reverseBits(global2.b.b.wz), false)), 22u)], u_input.c.x);
    var_0 = global1[_wgslsmith_index_u32(20680u, 28u)];
    return abs(_wgslsmith_add_vec3_i32(select(vec3<i32>(-11811i, 0i ^ global2.c, min(var_0.c, var_1.c)), vec3<i32>(38087i >> (u_input.d.x % 32u), -30594i, 2147483647i), !select(vec3<bool>(global2.b.a.x, false, var_0.b.a.x), vec3<bool>(false, true, true), global2.b.a.x)), vec3<i32>(reverseBits(1i), max(_wgslsmith_mod_i32(var_1.c, u_input.c.x), abs(var_0.c)), -u_input.c.x)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> i32 {
    var var_0 = Struct_3(-1140f, !any(vec3<bool>(!global2.b.a.x, false, true)), vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, 49118i, global2.c), func_3())), all(select(global2.b.a, select(arg_0.a, vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.a.x, true)), arg_0.a.x)));
    var var_1 = _wgslsmith_clamp_u32(~global2.b.b.x, 21563u, 1u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, global2.b.c, 830f)))))), Struct_1(!vec2<bool>(all(vec3<bool>(arg_0.a.x, global2.b.a.x, true)), any(vec2<bool>(true, arg_0.a.x))), global2.b.b, _wgslsmith_f_op_f32(-1082f - -104f)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.c.x, 0i), (vec3<i32>(global2.c, -899i, -2147483647i) << (vec3<u32>(global2.b.b.x, arg_0.b.x, 59996u) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.b.x, 16033u, arg_0.b.x), u_input.d, vec3<u32>(arg_0.b.x, arg_0.b.x, 3486u)) % vec3<u32>(32u))));
    global3 = array<f32, 13>();
    var var_3 = (u_input.a >= reverseBits(~var_2.b.b.x)) & true;
    return _wgslsmith_add_i32(u_input.c.x, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(~_wgslsmith_add_vec2_u32(vec2<u32>(9948u, global2.b.b.x), vec2<u32>(u_input.a, u_input.b)) >> (u_input.d.zx % vec2<u32>(32u)), global2.a.xy, 14576i), global3[_wgslsmith_index_u32(global2.b.b.x, 13u)], 307f);
    let var_1 = Struct_3(-566f, global2.b.a.x, vec2<i32>(func_2(func_1(func_1(vec2<u32>(0u, u_input.b), global2.a.xy, var_0).b.wy, _wgslsmith_f_op_vec2_f32(round(global2.a.yz)), -u_input.c.x), _wgslsmith_f_op_f32(step(global2.b.c, global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -548f)), 0i & -u_input.c.x), !(true | !func_1(u_input.d.yx, global2.a.xy, var_0).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(var_1.a, global3[_wgslsmith_index_u32(1u, 13u)], var_1.a))), !vec3<bool>(true, false, var_1.d))))), select(global2.c, ~(~(-49636i ^ global2.c)), (global3[_wgslsmith_index_u32(global2.b.b.x, 13u)] >= _wgslsmith_f_op_f32(select(-122f, global2.b.c, true))) || var_1.b));
}

