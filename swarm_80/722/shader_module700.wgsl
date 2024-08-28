struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-32385i, 1i, i32(-2147483648));

var<private> global1: array<i32, 5> = array<i32, 5>(-14303i, 0i, -53640i, 7894i, 25074i);

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global3: Struct_1 = Struct_1(30463u, vec4<u32>(1u, 53024u, 3075u, 0u), vec2<f32>(-1000f, 1102f), false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> vec4<i32> {
    let var_0 = global0.x;
    let var_1 = ~63518u;
    return ~vec4<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(reverseBits(1u), 5u)]), global1[_wgslsmith_index_u32(27310u, 5u)], global0.x << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1, 4294967295u), ~global3.a) % 32u), -1i);
}

fn func_3() -> vec4<u32> {
    global3 = Struct_1(~_wgslsmith_mult_u32(max(_wgslsmith_sub_u32(global3.b.x, u_input.a.x), ~0u), 46077u), ~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, 0u, ~17417u, global3.a), vec4<u32>(global3.a, global3.a, u_input.a.x, 63011u) << (select(global3.b, global3.b, global3.d) % vec4<u32>(32u))), global3.c, all(vec4<bool>(select(any(global2.wzw), any(global2.ywx), true), global3.d, any(vec4<bool>(false, true, global3.d, global3.d)), all(global2.wx))));
    var var_0 = ((abs(vec3<u32>(global3.a, global3.a, 50493u)) << (vec3<u32>(~u_input.a.x, 0u | u_input.b, global3.a) % vec3<u32>(32u))) & vec3<u32>(~_wgslsmith_sub_u32(global3.a, u_input.c.x), ~global3.b.x, _wgslsmith_mult_u32(~global3.a, 0u >> (global3.b.x % 32u)))) ^ ~min(global3.b.xzw << ((global3.b.xyz & global3.b.wzw) % vec3<u32>(32u)), ~(~vec3<u32>(38043u, 1u, 22256u)));
    let var_1 = Struct_2(global2.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1076f, global3.c.x) + vec2<f32>(global3.c.x, global3.c.x)), vec2<f32>(-920f, global3.c.x))) + global3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-837f - global3.c.x) + -707f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, 239f)), global3.c.x, _wgslsmith_f_op_f32(global3.c.x - _wgslsmith_f_op_f32(global3.c.x + global3.c.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, global3.c.x, global3.c.x, global3.c.x) * vec4<f32>(311f, global3.c.x, 1000f, global3.c.x)))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1044f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-446f, global3.c.x)))))), global3.c.x, var_1.c.x);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(round(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)));
    return ~vec4<u32>(1u, countOneBits(min(~u_input.c.x, 7320u)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b.x, u_input.c.x), global3.b.yw)) & ~(0u >> (u_input.a.x % 32u)), ~var_0.x);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global3 = Struct_1(4294967295u, max(_wgslsmith_sub_vec4_u32(global3.b, func_3()), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, global3.b.x, arg_0, 27681u), vec4<u32>(min(u_input.c.x, global3.b.x), firstLeadingBit(4294967295u), global3.b.x >> (101204u % 32u), 31170u ^ u_input.a.x))), arg_2.b, !global2.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.c));
    var var_1 = max(67542u, ~1u);
    var var_2 = _wgslsmith_f_op_f32(trunc(var_0.x));
    global0 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global0.x & -21186i, global0.x, _wgslsmith_div_i32(global0.x, -46177i)), abs(select(vec3<i32>(-50011i, -14683i, 1i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 5u)], global0.x, 1i), true) & _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, -1i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 5u)], 2147483647i, -60744i))), abs(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-38590i, global1[_wgslsmith_index_u32(global3.b.x, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), vec3<i32>(global0.x, -1i, global0.x)), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global0.x, -12331i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, global0.x), vec3<i32>(global0.x, global0.x, -19898i))))), abs(-_wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, global0.x, -2147483647i)), vec3<i32>(global1[_wgslsmith_index_u32(1u, 5u)], 51201i, -2147483647i) | vec3<i32>(-11536i, global0.x, global0.x))));
    return Struct_2(select(arg_2.a, !select(select(vec2<bool>(true, true), arg_2.a, global2.xw), !vec2<bool>(arg_2.a.x, global3.d), arg_2.a), true), vec2<f32>(_wgslsmith_div_f32(-397f, _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) + 782f), -900f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(894f, -857f), _wgslsmith_div_f32(arg_2.b.x, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(626f, var_0.x, global2.x)))), _wgslsmith_f_op_f32(ceil(1f))) - arg_2.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = any(!vec3<bool>(!select(false, false, arg_1.a.x), true, !all(vec4<bool>(arg_1.a.x, global2.x, true, global2.x))));
    let var_1 = ~(~abs(0u));
    global2 = !(!select(!select(vec4<bool>(true, global3.d, false, var_0), vec4<bool>(true, true, global3.d, true), vec4<bool>(true, global2.x, true, var_0)), vec4<bool>(all(vec2<bool>(true, var_0)), global2.x & true, global2.x, false), global3.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 172f))), global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x - 574f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-631f)))), -326f, -155f))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-3491f, _wgslsmith_f_op_f32(f32(-1f) * -1013f), !global3.d))), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2198f - 492f)))), _wgslsmith_f_op_f32(-arg_1.b.x)) * func_2(max(~abs(var_1), ~_wgslsmith_mod_u32(var_1, var_1)), true, func_2(var_1, !(!arg_1.a.x), arg_1)).c.yyz);
    return countOneBits(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec3<u32>(0u, ~func_4(func_1(), func_2(14517u, global2.x, Struct_2(vec2<bool>(global2.x, global2.x), global3.c, vec4<f32>(-1000f, global3.c.x, -885f, global3.c.x)))), abs(~_wgslsmith_div_u32(u_input.c.x, 29676u))), Struct_1(4294967295u, _wgslsmith_clamp_vec4_u32(vec4<u32>(51623u, 4294967295u, u_input.c.x, u_input.a.x), _wgslsmith_mod_vec4_u32(global3.b, vec4<u32>(global3.b.x, global3.b.x, u_input.b, 1u)), global3.b ^ global3.b) >> (((global3.b ^ vec4<u32>(global3.b.x, global3.b.x, u_input.b, global3.a)) >> (global3.b % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-func_2(func_4(vec4<i32>(global0.x, -2147483647i, global0.x, -22831i), Struct_2(global2.xw, global3.c, vec4<f32>(global3.c.x, 268f, global3.c.x, global3.c.x))), !global3.d, func_2(57880u, false, Struct_2(vec2<bool>(global2.x, false), vec2<f32>(329f, global3.c.x), vec4<f32>(-1996f, global3.c.x, global3.c.x, global3.c.x)))).b), global3.d), func_2(~_wgslsmith_div_u32(54802u, u_input.b << (1u % 32u)), any(!vec2<bool>(global3.d, global2.x)) != true, func_2(13471u, any(!vec2<bool>(global3.d, false)), Struct_2(global2.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(373f, global3.c.x) + vec2<f32>(-205f, global3.c.x)), vec4<f32>(global3.c.x, -373f, global3.c.x, global3.c.x)))), Struct_4(false, func_2(0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(47832u, global3.b.x), vec2<u32>(11703u, 39038u)) % 32u), true, func_2(u_input.c.x & u_input.c.x, true, func_2(u_input.c.x, global3.d, Struct_2(global2.zz, global3.c, vec4<f32>(785f, 414f, 957f, 457f))))), global3.b.zyw, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(func_3().ww, vec2<u32>(u_input.a.x, 4907u)), max(abs(global3.b.zy), vec2<u32>(u_input.c.x, 1u)))));
    global2 = select(!vec4<bool>(true, !(var_0.d.b.c.x > 1852f), -29343i <= (2147483647i | global0.x), any(vec4<bool>(true, true, true, true))), vec4<bool>(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.b.c.x))) > 1000f, all(select(!vec3<bool>(false, global3.d, false), !global2.zwx, vec3<bool>(true, true, true))), true), true);
    let var_1 = func_2(min(global3.b.x, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 4294967295u)))), ~(global3.a | ~u_input.a.x) >= ~0u, Struct_2(func_2(global3.a, all(var_0.d.b.a), var_0.d.b).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(var_0.c.b.x * global3.c.x)) - vec2<f32>(-200f, _wgslsmith_f_op_f32(abs(-244f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(568f)), -1896f, _wgslsmith_f_op_f32(min(var_0.b.c.x, var_0.d.b.c.x)), _wgslsmith_f_op_f32(round(var_0.b.c.x)))))));
    var_0 = Struct_5(~(var_0.d.c & ~global3.b.xxy), var_0.b, func_2(var_0.d.d.x, global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(global3.a, u_input.b)), 5u)] <= _wgslsmith_dot_vec2_i32(~global0.zz, global0.xx), Struct_2(vec2<bool>(true, all(vec4<bool>(false, true, false, var_0.b.d))), vec2<f32>(-847f, -342f), vec4<f32>(var_1.b.x, var_1.b.x, var_1.c.x, var_1.b.x))), Struct_4(all(vec3<bool>(var_1.a.x, global0.x < global0.x, global3.d)), var_0.d.b, var_0.a, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.a, 18544u), countOneBits(u_input.a) ^ abs(vec2<u32>(52976u, u_input.c.x)))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(func_2(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, var_0.d.d.x, 39103u), 38915u), false, var_1).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x - -591f))))))));
    global2 = !select(select(vec4<bool>(any(var_0.d.b.a), global3.d, all(vec4<bool>(true, global2.x, global2.x, true)), all(global2.zxz)), !vec4<bool>(true, false, global2.x, global2.x), !all(global2.xwx)), !(!vec4<bool>(false, false, false, global2.x)), select(select(select(vec4<bool>(false, true, var_1.a.x, global2.x), vec4<bool>(false, true, global3.d, true), vec4<bool>(true, global3.d, var_0.c.a.x, true)), vec4<bool>(var_0.b.d, false, false, true), var_1.a.x || false), vec4<bool>(true, all(vec2<bool>(true, global3.d)), any(vec2<bool>(true, global3.d)), false), global3.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(1u >> ((u_input.b | 13349u) % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 0u, 99069u) >> (var_0.a % vec3<u32>(32u)), global3.b.xxz)));
}

