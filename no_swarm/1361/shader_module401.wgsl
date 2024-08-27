struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec4<bool>(false, true, true, false)), 773f, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), -590f, Struct_1(vec4<bool>(true, true, true, false))), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), 1000f, Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), 893f, Struct_1(vec4<bool>(false, true, true, false))), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), -769f, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, true)), -938f, Struct_1(vec4<bool>(false, true, false, true))), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), -1287f, Struct_1(vec4<bool>(false, false, true, false))), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), -159f, Struct_1(vec4<bool>(false, true, true, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, false)), 754f, Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(true, true, false, true)), -1687f, Struct_1(vec4<bool>(false, false, false, true))), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), -462f, Struct_1(vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), 1084f, Struct_1(vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec4<bool>(false, false, true, true)), 143f, Struct_1(vec4<bool>(false, true, false, false))), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), -651f, Struct_1(vec4<bool>(false, false, true, false))));

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, true)));

var<private> global3: i32;

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_1, 12>();
    global3 = 0i;
    var var_0 = (_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -36229i, -27250i), firstTrailingBit(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x))), vec3<i32>(_wgslsmith_clamp_i32(25716i, -18404i, 0i), -u_input.c.x, min(u_input.c.x, -36017i))) << (_wgslsmith_sub_vec3_u32(countOneBits(firstLeadingBit(vec3<u32>(1u, 11042u, u_input.d.x))), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x | u_input.b)) % vec3<u32>(32u))) & reverseBits(firstLeadingBit(vec3<i32>(23383i, 0i, 0i) >> ((vec3<u32>(52072u, u_input.d.x, u_input.d.x) & vec3<u32>(u_input.b, 100243u, u_input.d.x)) % vec3<u32>(32u))));
    global0 = array<Struct_2, 14>();
    global1 = array<Struct_1, 12>();
    return vec4<bool>(any(select(vec4<bool>(all(vec4<bool>(true, false, false, false)), true, select(true, false, false), false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), all(vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), !all(vec3<bool>(true, true, false)))), 99425u == min(4294967295u, ~_wgslsmith_mod_u32(u_input.d.x, 0u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!vec4<bool>(all(vec4<bool>(true, true, true, true)) || true, any(func_3()), true, true));
    global2 = array<Struct_1, 6>();
    global3 = u_input.c.x;
    var var_1 = -1330f;
    global3 = -u_input.c.x;
    return Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, any(func_3().yyx), false));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = vec3<u32>(~1u, u_input.b, 27674u);
    var var_2 = -(~(-_wgslsmith_sub_i32(1i, _wgslsmith_mult_i32(-34832i, u_input.c.x))));
    var var_3 = func_2();
    let var_4 = ~_wgslsmith_div_i32(select(-u_input.c.x, u_input.c.x, arg_0.x | var_0), u_input.c.x);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d >> (vec2<u32>(4294967295u, ~u_input.a.x) % vec2<u32>(32u)), vec2<u32>(u_input.d.x, 1u)), 25u)];
    var var_1 = global1[_wgslsmith_index_u32(33758u, 12u)];
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.wz, vec2<i32>(2147483647i, func_1(!vec4<bool>(true, var_1.a.x, true, var_0.a.x)))), vec2<i32>(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.c.zw, vec2<i32>(34665i, u_input.c.x)), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec2_u32(reverseBits(u_input.d), select(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d, false)), ~vec2<u32>(21960u, u_input.b), !func_3().xw) | min(u_input.d, vec2<u32>(~u_input.d.x, countOneBits(1u))), u_input.c.x, _wgslsmith_div_f32(174f, _wgslsmith_f_op_f32(f32(-1f) * -1307f)), firstTrailingBit(u_input.b));
}

