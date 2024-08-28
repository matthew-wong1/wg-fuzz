struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-55455i, 32086i);

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-2154f, 249f), vec2<f32>(-202f, 764f), vec2<f32>(860f, 1933f), vec2<f32>(-641f, 125f), vec2<f32>(388f, -1000f), vec2<f32>(1250f, 1094f), vec2<f32>(-1000f, -553f), vec2<f32>(243f, 950f), vec2<f32>(1750f, -1136f), vec2<f32>(478f, -1325f), vec2<f32>(-1000f, 1225f), vec2<f32>(-510f, -1246f), vec2<f32>(886f, 1140f), vec2<f32>(1519f, 604f), vec2<f32>(177f, -1000f), vec2<f32>(-517f, -662f), vec2<f32>(739f, 306f), vec2<f32>(-2315f, 257f), vec2<f32>(-914f, 1000f));

var<private> global2: array<f32, 28>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_3(Struct_1(~(-vec3<i32>(-1i, global0.x, 0i)) << (vec3<u32>(_wgslsmith_div_u32(u_input.b, 18371u), ~u_input.b, ~1u) % vec3<u32>(32u)), -select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, arg_0, -27329i), vec3<i32>(global0.x, -2147483647i, arg_0)), vec3<i32>(arg_0, u_input.a.x, global0.x), false), vec3<u32>(74428u | (u_input.b & 41042u), u_input.b, 4294967295u), -global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(149f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)])))), _wgslsmith_f_op_f32(round(-195f)), false);
    global2 = array<f32, 28>();
    let var_1 = var_0.a;
    var var_2 = Struct_2(_wgslsmith_sub_vec4_u32(abs(~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, var_1.c.x))), max(~vec4<u32>(var_1.c.x, u_input.b, var_0.a.c.x, u_input.b) << (_wgslsmith_add_vec4_u32(vec4<u32>(36131u, var_0.a.c.x, var_1.c.x, 1u), vec4<u32>(14507u, 61444u, u_input.b, 31444u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.b, 63068u, 75486u), ~vec4<u32>(0u, 0u, 20032u, u_input.b)))), var_0.a);
    let var_3 = ~(~var_2.a);
    return 15978i;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> u32 {
    global0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(~(~u_input.c), global0.x), max(-u_input.a, min(~u_input.a, -u_input.d)));
    var var_0 = _wgslsmith_mult_u32(44062u, 43095u);
    global1 = array<vec2<f32>, 19>();
    var var_1 = Struct_3(Struct_1(vec3<i32>(global0.x, -2147483647i, -4328i), ~(vec3<i32>(-1i) * -vec3<i32>(global0.x, global0.x, -27116i)), firstTrailingBit(~vec3<u32>(u_input.b, 56376u, 0u)), -firstLeadingBit(func_3(-32350i)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(13654u, 28u)])))), false))), global2[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(~1111u, 42119u)), 28u)], all(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true))));
    var var_2 = 3337u;
    return ~(~(~reverseBits(u_input.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = ~vec4<u32>(countOneBits(u_input.b), ~arg_1.a.c.x, ~48863u, func_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.a.c.xy, arg_1.a.c.zz), abs(vec2<u32>(arg_3.a.c.x, 0u)), arg_3.a.c.zy), _wgslsmith_f_op_f32(floor(947f))));
    let var_1 = select(select(select(vec3<bool>(true, arg_1.c, arg_0.x), arg_0.zyx, (arg_1.a.c.x & 25638u) >= _wgslsmith_mod_u32(arg_1.a.c.x, 4294967295u)), arg_0.zzw, !(!vec3<bool>(arg_0.x, arg_0.x, false))), select(vec3<bool>(all(vec3<bool>(false, false, arg_0.x)) | arg_1.c, all(vec3<bool>(true, true, arg_0.x)) != true, (arg_3.c || arg_0.x) || any(vec3<bool>(arg_3.c, arg_1.c, true))), select(vec3<bool>(arg_3.c, !arg_3.c, true), !(!arg_0.xyz), select(vec3<bool>(false, true, true), select(arg_0.xwx, vec3<bool>(false, arg_3.c, arg_0.x), arg_0.x), arg_0.x || true)), arg_0.yxx), arg_0.x);
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.b)));
    var_2 = all(!var_1.xx);
    return _wgslsmith_mod_u32(~func_2(~arg_3.a.c.xz & ~arg_1.a.c.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.e + -439f))), 31296u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    global0 = -vec2<i32>(-2147483647i, ~_wgslsmith_div_i32(arg_0.x | arg_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(16772i, arg_2.a.d, 2147483647i), arg_0.yzy)));
    var var_0 = Struct_2(reverseBits(_wgslsmith_add_vec4_u32(~arg_1.a, arg_1.a >> (vec4<u32>(390u, arg_1.a.x, arg_1.b.c.x, 4294967295u) % vec4<u32>(32u)))) ^ vec4<u32>(~(u_input.b ^ arg_2.a.c.x), _wgslsmith_dot_vec4_u32(select(arg_1.a, arg_1.a, true), arg_1.a), ~(~63921u), 55989u), Struct_1(arg_0.xxx, _wgslsmith_div_vec3_i32(~(-arg_0.yzz), vec3<i32>(select(1i, arg_2.a.d, arg_2.c), 2327i, 6539i)), vec3<u32>(~30584u, 1u, u_input.b), global0.x, _wgslsmith_f_op_f32(1330f + _wgslsmith_f_op_f32(select(-478f, -903f, arg_2.c)))));
    var var_1 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(-countOneBits(-32573i));
    let var_1 = func_4(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_0, u_input.a.x, var_0, var_0)), vec4<i32>(var_0, var_0, 0i, 4452i)), Struct_2(vec4<u32>(u_input.b, func_1(vec4<bool>(true, true, true, true), Struct_3(Struct_1(vec3<i32>(-2147483647i, u_input.d.x, u_input.a.x), vec3<i32>(82687i, var_0, global0.x), vec3<u32>(50874u, u_input.b, u_input.b), var_0, global2[_wgslsmith_index_u32(44453u, 28u)]), 585f, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(61188u, 28u)]), vec2<f32>(global2[_wgslsmith_index_u32(29953u, 28u)], -465f), vec2<bool>(false, true))), Struct_3(Struct_1(vec3<i32>(22269i, 1i, 1i), vec3<i32>(22053i, -33312i, u_input.d.x), vec3<u32>(26064u, u_input.b, u_input.b), -43581i, -924f), global2[_wgslsmith_index_u32(u_input.b, 28u)], true)), _wgslsmith_dot_vec2_u32(vec2<u32>(93175u, u_input.b), vec2<u32>(u_input.b, u_input.b)), 4294967295u), Struct_1(vec3<i32>(53612i, var_0, u_input.a.x) & reverseBits(vec3<i32>(-837i, var_0, -7863i)), ~(~vec3<i32>(u_input.a.x, -1i, u_input.c)), ~vec3<u32>(28065u, 1u, u_input.b), -7176i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mod_u32(1u, 1u)), 28u)])), Struct_3(Struct_1(firstTrailingBit(countOneBits(vec3<i32>(global0.x, -1i, u_input.a.x))), ~min(vec3<i32>(-48187i, u_input.d.x, -2147483647i), vec3<i32>(2147483647i, u_input.c, -1i)), vec3<u32>(16133u, 58990u, u_input.b) ^ ~vec3<u32>(u_input.b, 37720u, 1u), var_0, global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1190f))), true == all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2618f - -981f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(947f, global2[_wgslsmith_index_u32(u_input.b, 28u)])))))) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 28u)] * -480f)));
    let var_2 = !any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_1.c, var_1.c, false), select(vec4<bool>(var_1.c, false, var_1.c, var_1.c), vec4<bool>(false, var_1.c, var_1.c, true), var_1.c)));
    var var_3 = -vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(13535i, global0.x, global0.x, u_input.d.x), vec4<i32>(-2147483647i, 42111i, -1i, 6827i), vec4<i32>(0i, -28797i, var_0, u_input.c)), -vec4<i32>(28026i, -53413i, 1i, global0.x)) >> (u_input.b % 32u), u_input.a.x, -1i, min(var_1.a.b.x, _wgslsmith_add_i32(global0.x, u_input.d.x) << (u_input.b % 32u)));
    var var_4 = Struct_3(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.b, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6703u, var_1.a.c.x), vec3<u32>(var_1.a.c.x, u_input.b, 24187u))), 28u)])), false);
    var var_5 = ~4294967295u;
    global0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_4.a.a.x, global0.x), firstTrailingBit(var_1.a.b.zy)), vec2<i32>(var_0, _wgslsmith_sub_i32(var_3.x, global0.x & func_4(vec4<i32>(-1i, u_input.a.x, -2147483647i, var_0), Struct_2(vec4<u32>(4294967295u, 4294967295u, 863u, 33603u), Struct_1(var_4.a.b, var_4.a.b, vec3<u32>(1u, u_input.b, 2839u), -1i, global2[_wgslsmith_index_u32(var_4.a.c.x, 28u)])), Struct_3(Struct_1(var_1.a.b, vec3<i32>(var_0, 8793i, var_0), var_1.a.c, 26862i, global2[_wgslsmith_index_u32(17152u, 28u)]), 478f, false), var_1.a.e).a.b.x)), ~vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_1.a.b.x, _wgslsmith_add_i32(var_0, global0.x))));
    let var_6 = vec4<bool>(true, var_4.b != -250f, select(var_1.c, var_0 <= -9244i, var_2), !var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_1.a.c.x, 28u)], global2[_wgslsmith_index_u32(var_1.a.c.x, 28u)], var_4.a.e, var_1.a.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-937f, 1000f, 1000f, var_1.a.e))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1554f - -1805f), _wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_div_f32(var_4.a.e, var_1.b), -719f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1579f, -1000f, -975f, var_4.a.e))))))), var_4.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -520f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), -189f)), 1085f)));
}

