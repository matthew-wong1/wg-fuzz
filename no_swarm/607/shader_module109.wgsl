struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 32120u, 1u);

var<private> global1: vec2<f32> = vec2<f32>(1515f, 1357f);

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(0u), Struct_1(45639u), Struct_1(43187u), Struct_1(9420u), Struct_1(0u), Struct_1(38031u), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(43395u), Struct_1(29918u), Struct_1(968u), Struct_1(29462u), Struct_1(1u), Struct_1(1u), Struct_1(3920u), Struct_1(0u), Struct_1(1u), Struct_1(32355u), Struct_1(40089u), Struct_1(383u), Struct_1(19042u), Struct_1(20697u), Struct_1(23050u), Struct_1(88304u), Struct_1(13470u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(21478u));

var<private> global3: array<vec2<f32>, 19>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 17796u, 75013u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    var var_0 = select(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return var_0.x;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    global3 = array<vec2<f32>, 19>();
    var var_0 = vec2<bool>(!(~1u >= (arg_3.a.a >> (u_input.e.x % 32u))), any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(arg_3, u_input.b))));
    let var_1 = var_0.x;
    let var_2 = -reverseBits(~((vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, 11624i) >> (u_input.b % vec4<u32>(32u))) & -vec4<i32>(19494i, 9422i, u_input.d.x, arg_1.x)));
    var var_3 = ~max(vec4<u32>(~0u, ~arg_3.c.a, global4.x, _wgslsmith_mult_u32(arg_3.a.a, global4.x)), ~vec4<u32>(~1u, 0u, _wgslsmith_mod_u32(global0.x, global0.x), _wgslsmith_mult_u32(arg_3.c.a, arg_3.a.a)));
    return arg_3;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<i32>) -> vec3<f32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-124f, 804f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + 874f)), vec3<i32>(_wgslsmith_div_i32(0i, -(1i & u_input.d.x)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-50047i, 23326i), abs(vec2<i32>(-1i, 1i)))), -2147483647i), abs(min(u_input.b.yyz, vec3<u32>(abs(arg_1), _wgslsmith_sub_u32(0u, 0u), arg_1))), Struct_2(Struct_1(min(u_input.e.x, 50868u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(296f, 389f, 1163f), vec3<f32>(-307f, -1370f, global1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1000f, 366f) + vec3<f32>(-233f, 642f, global1.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -117f, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(1672f, global1.x, global1.x)))), Struct_1(~global0.x)));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, abs(_wgslsmith_clamp_vec4_u32(select(u_input.b, vec4<u32>(29105u, global0.x, 136326u, u_input.e.x), true), ~vec4<u32>(4294967295u, u_input.b.x, u_input.e.x, 54396u), firstTrailingBit(u_input.b)))));
    var var_2 = vec4<bool>(any(!vec4<bool>(all(vec4<bool>(true, false, true, false)), all(vec2<bool>(false, true)), var_0.a.a < global4.x, true)), !(any(vec2<bool>(true, false)) == true), true, any(vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), arg_2.x >= 1i)));
    global0 = ~_wgslsmith_clamp_vec3_u32(~(~arg_0), ~_wgslsmith_mod_vec3_u32(vec3<u32>(42474u, u_input.e.x, 59579u), u_input.b.zxw), arg_0) << ((arg_0 & ~(~(~arg_0))) % vec3<u32>(32u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 565f) + var_0.b.x)))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(func_2(_wgslsmith_f_op_f32(max(global1.x, var_0.b.x)), vec3<i32>(select(u_input.d.x, u_input.a.x, true), 19107i, 33567i), vec3<u32>(global0.x, ~arg_0.x, 0u), Struct_2(global2[_wgslsmith_index_u32(global4.x, 31u)], _wgslsmith_f_op_vec3_f32(abs(var_0.b)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(42162u, global4.x), 31u)])).b.x, _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 707f))))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 192f, global1.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_3.xxz)) - vec3<f32>(_wgslsmith_f_op_f32(var_3.x + -1333f), 1202f, _wgslsmith_f_op_f32(var_0.b.x * 1745f)))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<u32>(~(~_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b)), global4.x, 48042u);
    global3 = array<vec2<f32>, 19>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(ceil(global1.x))));
    global4 = u_input.b.zzx;
    global1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(-var_0))));
    var var_1 = global4.x;
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 90479u, 36311u) >> (u_input.b.zzw % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(u_input.b.zwz, u_input.b.wwz)), ~u_input.b.x, vec4<i32>(68411i, 0i, u_input.d.x, u_input.c) | ~vec4<i32>(2147483647i, -1i, u_input.c, u_input.d.x))) * func_2(591f, u_input.a, ~abs(vec3<u32>(u_input.e.x, u_input.e.x, global4.x)), Struct_2(global2[_wgslsmith_index_u32(abs(global0.x), 31u)], _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1881f, var_0, 652f), vec3<f32>(1000f, 942f, -370f))), global2[_wgslsmith_index_u32(~126019u, 31u)])).b), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(19206u, 34955u, 6647u), vec3<u32>(global0.x, 10869u, 14510u)), vec3<u32>(global4.x, global4.x, 20424u)) >> (~global4.x % 32u)));
    var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(u_input.b.xyx, max(10645u, var_2.c.a), vec4<i32>(u_input.c, -1i, u_input.d.x, u_input.c) & vec4<i32>(-1i, 4145i, u_input.a.x, -17393i))).x))), -_wgslsmith_clamp_vec3_i32(max(min(vec3<i32>(u_input.d.x, 2147483647i, -2147483647i), u_input.a), ~u_input.a), u_input.a ^ -u_input.a, select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), u_input.a, true)), firstLeadingBit(firstTrailingBit(~firstTrailingBit(u_input.b.wyz))), func_2(-1631f, reverseBits(u_input.a), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.a.a, 38741u, 25771u), vec3<u32>(global0.x, 9075u, global4.x))), func_2(300f, _wgslsmith_clamp_vec3_i32(~vec3<i32>(-15896i, u_input.c, -12557i), u_input.a, u_input.a), ~(vec3<u32>(10090u, u_input.b.x, u_input.b.x) << (vec3<u32>(73641u, 20356u, 80611u) % vec3<u32>(32u))), Struct_2(func_2(647f, u_input.a, vec3<u32>(var_2.c.a, 4294967295u, global0.x), Struct_2(var_2.a, vec3<f32>(151f, global1.x, global1.x), Struct_1(4294967295u))).c, _wgslsmith_f_op_vec3_f32(floor(var_2.b)), global2[_wgslsmith_index_u32(28625u | global0.x, 31u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, global4.x), firstLeadingBit(var_2.a.a))), global0.x), reverseBits(9298u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.b))));
}

