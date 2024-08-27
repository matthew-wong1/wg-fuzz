struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

var<private> global2: array<Struct_4, 3>;

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 4294967295u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = 3727u;
    let var_1 = u_input.a.x >> (~(~select(_wgslsmith_mult_u32(global3.x, 50786u), _wgslsmith_dot_vec2_u32(vec2<u32>(7096u, global3.x), global3.xx), true)) % 32u);
    global0 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -327f))))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f + 754f)), 222f))) | false;
    var var_2 = (-u_input.c.x | reverseBits(1i)) < firstLeadingBit(countOneBits(abs(-18993i)) ^ (u_input.c.x & ~u_input.d));
    var_2 = !any(vec2<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))), any(vec2<bool>(true, true))));
    return ~vec4<u32>(19188u, ~90252u, var_1, 0u);
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c.x, -14513i, u_input.c.x, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-11557i, u_input.d, 2147483647i, u_input.b), vec4<i32>(u_input.c.x, u_input.b, 2147483647i, -18718i))) | ((vec4<i32>(u_input.d, 0i, 6675i, u_input.b) ^ vec4<i32>(38971i, u_input.d, u_input.d, u_input.d)) | _wgslsmith_add_vec4_i32(vec4<i32>(-19684i, u_input.c.x, 0i, -56937i), vec4<i32>(1i, 0i, -1165i, u_input.d))), vec4<i32>(u_input.d, 1i ^ u_input.b, -18545i, _wgslsmith_sub_i32(u_input.c.x, u_input.b)) >> (func_3(Struct_2(vec4<f32>(-442f, 951f, -521f, -273f))) % vec4<u32>(32u))) ^ ~(u_input.b & -1i);
    return ~firstLeadingBit(-u_input.c.xz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = false;
    global3 = ~(~vec4<u32>(global3.x, _wgslsmith_add_u32(1u, firstTrailingBit(1u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, global3.x), 1u), ~2414u));
    global2 = array<Struct_4, 3>();
    let var_1 = _wgslsmith_f_op_f32(arg_1.a.x - -378f);
    global3 = _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, 5053u)), u_input.a.x, firstLeadingBit(6750u), func_3(Struct_2(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, var_1))).x) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, global3.x), u_input.a), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(91334u, global3.x, 4294967295u, u_input.a.x), u_input.a), ~u_input.a, !(!select(vec4<bool>(arg_0.c.x, arg_0.c.x, true, false), vec4<bool>(true, true, false, false), false))));
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = arg_0.a.zzw;
    global2 = array<Struct_4, 3>();
    global3 = vec4<u32>(29950u, countOneBits(~1u), 47481u, firstLeadingBit(global3.x >> ((_wgslsmith_div_u32(global3.x, 20055u) >> (global3.x % 32u)) % 32u)));
    var var_1 = vec3<u32>((4022u ^ _wgslsmith_div_u32(1u, u_input.a.x)) | ((93874u ^ global3.x) | u_input.a.x), 1u, func_4(Struct_1(func_2(), vec3<i32>(arg_3.x, arg_1.x, 47859i) << (vec3<u32>(62858u, global3.x, 29974u) % vec3<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), true), arg_0)) >> (vec3<u32>(806u, min(countOneBits(global3.x), firstTrailingBit(~210u)), _wgslsmith_dot_vec2_u32(~global3.zx, ~global3.xz) << (~global3.x % 32u)) % vec3<u32>(32u));
    let var_2 = Struct_1(-vec2<i32>(arg_1.x >> (_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(u_input.a.x, var_1.x, var_1.x)) % 32u), _wgslsmith_clamp_i32(-arg_3.x, _wgslsmith_div_i32(-15778i, 2147483647i), ~arg_2.x)), countOneBits(select(~(vec3<i32>(arg_2.x, 1i, arg_3.x) << (u_input.a.yxz % vec3<u32>(32u))), ~(-vec3<i32>(-2147483647i, -2147483647i, arg_2.x)), 12035i <= reverseBits(arg_3.x))), vec2<bool>(true, ((-202f != var_0.x) | true) || (_wgslsmith_clamp_i32(15617i, u_input.b, 0i) != arg_1.x)), true);
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    global2 = array<Struct_4, 3>();
    global3 = ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, global3.x, 20673u)) | ~(u_input.a & vec4<u32>(3561u, 2402u, 1u, 0u)), (abs(u_input.a) ^ (u_input.a << (vec4<u32>(u_input.a.x, u_input.a.x, global3.x, global3.x) % vec4<u32>(32u)))) << (u_input.a % vec4<u32>(32u)));
    global0 = select(!(all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true))) != true), all(vec2<bool>(true, true)), (all(vec4<bool>(true, true, true, true)) || select(true, true, select(true, false, true))) != (all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) && any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    global2 = array<Struct_4, 3>();
    let var_0 = vec2<u32>(global3.x, ~func_4(Struct_1(abs(vec2<i32>(u_input.d, 13010i)), ~u_input.c, vec2<bool>(true, true), true), arg_1.a));
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_dot_vec3_i32(u_input.c, abs(-(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.d, -1i), u_input.c))));
    var var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, u_input.d), func_5(Struct_3(func_1(Struct_2(vec4<f32>(1000f, 1080f, 1398f, -864f)), u_input.c, vec4<i32>(u_input.c.x, -14942i, -2147483647i, u_input.c.x), vec3<i32>(-2147483647i, 3976i, u_input.c.x))), Struct_3(Struct_2(vec4<f32>(852f, 108f, -526f, -1910f))))), 2147483647i);
    var var_1 = Struct_3(func_1(func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, -182f, 933f, 1187f))), vec3<i32>(-2147483647i << (global3.x % 32u), -1i | u_input.c.x, ~(-7072i)), vec4<i32>(abs(-18589i), u_input.d, var_0.x, var_0.x), u_input.c), -(~(vec3<i32>(-51257i, -2147483647i, 0i) | vec3<i32>(-9876i, 37482i, var_0.x))), vec4<i32>(u_input.d, var_0.x, reverseBits(var_0.x), _wgslsmith_mult_i32(22777i, 1i)), vec3<i32>(-firstTrailingBit(1i), select(var_0.x, 0i, true), -2147483647i)));
    var var_2 = vec3<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)) && !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), false, true);
    let var_3 = u_input.c.x;
    var_2 = select(vec3<bool>(var_2.x || var_2.x, !var_2.x, any(select(!vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(var_2.x, var_2.x, true, false), !var_2.x))), select(select(select(!vec3<bool>(false, var_2.x, true), !vec3<bool>(false, var_2.x, true), var_2.x), vec3<bool>(select(true, false, true), true, var_2.x), vec3<bool>(var_2.x | var_2.x, select(true, var_2.x, var_2.x), var_2.x)), !vec3<bool>(!var_2.x, true, any(vec4<bool>(var_2.x, var_2.x, false, false))), !(!any(vec3<bool>(true, var_2.x, var_2.x)))), false);
    var var_4 = var_1.a;
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1543f, 1155f)) - _wgslsmith_div_f32(1755f, 342f)))), var_1.a.a.x));
    let var_6 = Struct_1(vec2<i32>(~_wgslsmith_mult_i32(2409i, var_0.x), max(var_3, ~_wgslsmith_sub_i32(u_input.d, -10416i))), ~u_input.c, !(!(!var_2.xz)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(-u_input.c.xx), _wgslsmith_f_op_vec2_f32(round(var_5.zz)));
}

