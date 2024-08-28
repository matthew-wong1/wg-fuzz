struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_2, 5>;

var<private> global2: Struct_1 = Struct_1(7576u, 25066u, vec2<i32>(-1i, -13399i), vec2<i32>(9498i, 1i), vec3<f32>(-182f, -165f, 472f));

var<private> global3: array<f32, 18>;

var<private> global4: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = vec2<bool>(all(select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), false), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))));
    let var_1 = Struct_1(max(global4.x, 0u), _wgslsmith_dot_vec3_u32(abs(~max(vec3<u32>(global2.a, 0u, 4294967295u), global4.zxz)), vec3<u32>(select(8616u, 1u, var_0.x) << (select(11135u, 0u, var_0.x) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 35576u, 20562u, global2.b), vec4<u32>(global4.x, global4.x, global2.a, 1u)), 1u)), vec2<i32>(-((u_input.a >> (1u % 32u)) << (firstTrailingBit(global2.a) % 32u)), 0i), _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(arg_0.zz, vec2<i32>(54573i, arg_0.x)), -min(vec2<i32>(27661i, u_input.a), global2.d) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(global2.b, global4.x), global4.yy) % vec2<u32>(32u))), _wgslsmith_div_vec3_f32(global2.e, global2.e));
    var_0 = vec2<bool>(any(select(vec2<bool>(true, var_0.x), !(!vec2<bool>(var_0.x, var_0.x)), any(!vec4<bool>(true, false, true, var_0.x)))), select(select(true | var_0.x, !var_0.x, var_0.x) | true, !var_0.x, all(!vec3<bool>(var_0.x, true, var_0.x))));
    global1 = array<Struct_2, 5>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, global3[_wgslsmith_index_u32(global4.x, 18u)], var_1.e.x) + global2.e) * _wgslsmith_f_op_vec3_f32(global2.e + vec3<f32>(2462f, 822f, -1296f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.e * _wgslsmith_f_op_vec3_f32(global2.e * vec3<f32>(global2.e.x, global2.e.x, -540f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1160f, var_1.e.x, var_1.e.x)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global2.e)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2.e))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(var_1.e, vec3<f32>(-351f, global3[_wgslsmith_index_u32(global4.x, 18u)], 1120f))))))))));
    return vec2<bool>((-(u_input.b >> (4294967295u % 32u)) ^ firstTrailingBit(var_1.d.x | -2147483647i)) > u_input.b, global4.x <= var_1.b);
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~(~32087u);
    var var_1 = global1[_wgslsmith_index_u32(~var_0, 5u)];
    var_1 = Struct_2(Struct_1(global4.x ^ _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.a, var_0, arg_0.x, arg_0.x)), ~vec4<u32>(arg_0.x, 7933u, 14518u, arg_1.a)), global4.x ^ 4294967295u, firstLeadingBit(firstLeadingBit(~global2.c)), global2.c, _wgslsmith_f_op_vec3_f32(-var_1.c.e)), select(select(!select(vec2<bool>(true, false), var_1.b, var_1.b.x), !var_1.b, !(!var_1.b)), !(!func_3(var_1.e)), select(var_1.b, select(var_1.b, vec2<bool>(var_1.b.x, true), all(vec4<bool>(false, var_1.b.x, false, var_1.b.x))), var_1.b)), Struct_1(53588u & ~var_0, ~_wgslsmith_div_u32(4294967295u, arg_1.a), ~(~vec2<i32>(-1i, arg_1.b.x)), vec2<i32>(4461i, ~arg_1.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.e, _wgslsmith_f_op_vec3_f32(abs(var_1.a.e)), select(vec3<bool>(true, false, var_1.b.x), vec3<bool>(true, false, var_1.b.x), vec3<bool>(false, var_1.b.x, true)))), vec3<f32>(-1900f, _wgslsmith_f_op_f32(trunc(1667f)), 839f))), arg_0.xz, var_1.e);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(17298u, 32028u), 5u)];
    var var_3 = Struct_2(var_1.c, !(!vec2<bool>(var_1.b.x, var_1.b.x | var_1.b.x)), Struct_1(~0u, 1u, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(var_1.c.c.x, global2.d.x), vec2<i32>(-2147483647i, -2147483647i)), var_2.e.zw), max(firstTrailingBit(vec2<i32>(37442i, u_input.b)), vec2<i32>(41025i, 36230i))), arg_1.b.zz, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.c.e)))), ~(vec2<u32>(50386u, 1u) >> (~abs(var_1.d) % vec2<u32>(32u))), var_2.e);
    return var_2.c;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~(vec2<u32>(37174u, _wgslsmith_mult_u32(global4.x, global4.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(global2.b, global2.b), global4.yw) % vec2<u32>(32u))), global4.yw);
    global3 = array<f32, 18>();
    var_0 = ~global2.b;
    let var_1 = Struct_2(func_2(_wgslsmith_mod_vec3_u32(global4.zwz, ~vec3<u32>(0u, global2.a, 1u)), Struct_3(global4.x, abs(vec3<i32>(-1i, 1i, -1i) >> (global4.wzz % vec3<u32>(32u))))), !(!(!func_3(vec4<i32>(global2.d.x, 28079i, 1i, 2147483647i)))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 1u, 65576u, 0u), ~vec4<u32>(global4.x, 4294967295u, 0u, global4.x)) ^ _wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(0u, global2.b)), _wgslsmith_add_u32(60912u, (global2.a << (72037u % 32u)) ^ global2.b), global2.c, global2.c, global2.e), abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(global4.x, global4.x) | vec2<u32>(29025u, 33351u), _wgslsmith_add_vec2_u32(vec2<u32>(global4.x, 1u), vec2<u32>(global2.b, 0u)))), abs(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, global2.c.x, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1i, global2.c.x, global2.d.x), vec4<i32>(u_input.b, -30127i, 0i, u_input.a)), vec4<bool>(false, false, true, false)), countOneBits(vec4<i32>(global2.c.x, global2.d.x, 0i, u_input.b)) >> (vec4<u32>(4294967295u, 99658u, 4294967295u, global4.x) % vec4<u32>(32u)))));
    let var_2 = select(vec4<u32>(_wgslsmith_div_u32(107153u, (global4.x & var_1.d.x) << (var_1.d.x % 32u)), ~(~global4.x), global4.x, global2.a), ~firstLeadingBit(abs(vec4<u32>(1u, 47363u, global2.b, 34853u))), !vec4<bool>(var_1.b.x, func_3(var_1.e).x, true, true));
    return ~global4.x << (global4.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(~1u));
    var_0 = global4.x;
    global3 = array<f32, 18>();
    var var_1 = Struct_1(global4.x, _wgslsmith_add_u32(~65060u, _wgslsmith_sub_u32(global4.x, func_1())), global2.c, countOneBits(global2.d) >> (~vec2<u32>(58459u, ~0u) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.x, 18u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-136f, -1232f)), _wgslsmith_f_op_f32(global2.e.x + 843f)))), _wgslsmith_f_op_f32(floor(func_2(global4.yxx, Struct_3(global4.x, vec3<i32>(-2147483647i, 0i, -19463i))).e.x)), global3[_wgslsmith_index_u32(0u, 18u)]));
    let var_2 = vec3<bool>(true, true, true);
    global1 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(93598u, firstTrailingBit(var_1.a), 4294967295u, global4.x)), ~(~vec4<u32>(global4.x, global2.a, 63652u << (global4.x % 32u), ~31885u)), -global2.c);
}

